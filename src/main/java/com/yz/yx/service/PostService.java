package com.yz.yx.service;

import com.yz.yx.bean.Post;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface PostService {
    List<Post> getAllPost();

    Post getPostById(Integer pid);
}
