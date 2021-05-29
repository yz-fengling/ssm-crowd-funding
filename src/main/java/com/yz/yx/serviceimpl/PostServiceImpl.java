package com.yz.yx.serviceimpl;

import com.yz.yx.bean.Post;
import com.yz.yx.dao.PostDao;
import com.yz.yx.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class PostServiceImpl implements PostService {
    @Autowired
    PostDao postDao;

    @Override
    public List<Post> getAllPost() {
        List<Post> list = postDao.getAllPost();
        return list;
    }

    @Override
    public Post getPostById(Integer pid) {
        return postDao.getPostById(pid);
    }
}
