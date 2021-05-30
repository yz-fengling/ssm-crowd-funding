package com.yz.yx.bean;

public class Middle_User_Post {
    private Integer mid;
    private User user;
    private Post post;

    public Middle_User_Post(Integer mid, User user, Post post) {
        this.mid = mid;
        this.user = user;
        this.post = post;
    }

    public Middle_User_Post() {
    }

    @Override
    public String toString() {
        return "Middle_User_Post{" +
                "mid=" + mid +
                ", user=" + user +
                ", post=" + post +
                '}';
    }

    public Integer getMid() {
        return mid;
    }

    public void setMid(Integer mid) {
        this.mid = mid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Post getPost() {
        return post;
    }

    public void setPost(Post post) {
        this.post = post;
    }
}
