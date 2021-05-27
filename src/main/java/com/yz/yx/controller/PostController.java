package com.yz.yx.controller;

import com.yz.yx.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

@Controller
public class PostController {
    @Autowired
    PostService postService;
}
