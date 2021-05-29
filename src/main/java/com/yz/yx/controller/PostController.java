package com.yz.yx.controller;

import com.yz.yx.bean.Post;
import com.yz.yx.service.PostService;
import com.yz.yx.util.DateUtil;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.servlet.http.HttpServletRequest;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.logging.SimpleFormatter;

@Controller
public class PostController {
    @Autowired
    PostService postService;

    @GetMapping(value = "postById",params = "pid")
    public String postById(@Param(value = "pid")Integer pid, HttpServletRequest request){
        Post post = postService.getPostById(pid);
        int percentage= (int) ((post.getPostInMoney()/post.getPostMoney())*100);
        //调用工具类来计算时间日期
        String day = DateUtil.fromDeadline(post.getPostDate());
        if (DateUtil.fromDeadLong(post.getPostDate())<=0){
            post.setPostStatus(1);
            day="已结束";
        }
        request.setAttribute("percentage",percentage);
        request.setAttribute("post",post);
        request.setAttribute("day",day);
        return "project";
    }

}
