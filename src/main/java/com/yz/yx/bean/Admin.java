package com.yz.yx.bean;

public class Admin {
    private int adminId;
    private int adminName;
    private int adminPw;
    private User user;
    private Post post;

    public Admin() {
    }

    @Override
    public String toString() {
        return "Admin{" +
                "adminId=" + adminId +
                ", adminName=" + adminName +
                ", adminPw=" + adminPw +
                ", user=" + user +
                ", post=" + post +
                '}';
    }

    public Admin(int adminId, int adminName, int adminPw, User user, Post post) {
        this.adminId = adminId;
        this.adminName = adminName;
        this.adminPw = adminPw;
        this.user = user;
        this.post = post;
    }

    public void setAdminId(int adminId) {
        this.adminId = adminId;
    }

    public void setAdminName(int adminName) {
        this.adminName = adminName;
    }

    public void setAdminPw(int adminPw) {
        this.adminPw = adminPw;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setPost(Post post) {
        this.post = post;
    }

    public int getAdminId() {
        return adminId;
    }

    public int getAdminName() {
        return adminName;
    }

    public int getAdminPw() {
        return adminPw;
    }

    public User getUser() {
        return user;
    }

    public Post getPost() {
        return post;
    }
}
