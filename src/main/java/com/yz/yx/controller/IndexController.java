package com.yz.yx.controller;
import java.util.List;

import com.yz.yx.bean.Post;
import com.yz.yx.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;


/**
 * 访问时把所有商品的信息传到首页中
 */
@Controller
public class IndexController {

    @Autowired
    PostService postService;

    @GetMapping("crowd_funding")
    public String execute(HttpServletRequest request){
        //查询所有商品信息
        List<Post> list = postService.getAllPost();
        int[] percentage=new int[4];
        for (int i=0;i<=3;i++) {
            percentage[i] = (int) ((list.get(i).getPostInMoney()/list.get(i).getPostMoney())* 100);
            if (percentage[i]>=100){
                percentage[i]=100;
            }
        }

        request.setAttribute("percentage",percentage);
        request.setAttribute("post",list);
        return "index";
    }

}
