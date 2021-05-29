package com.yz.yx.dao;

import com.yz.yx.bean.Post;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface PostDao {
    List<Post> getAllPost();

    Post getPostById(Integer pid);
}
