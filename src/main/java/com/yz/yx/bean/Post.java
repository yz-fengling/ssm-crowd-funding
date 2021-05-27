package com.yz.yx.bean;

import javax.xml.crypto.Data;

public class Post {
    private int postId;
    private String postName;
    private double postMoney;
    private Data postDay;
    private double postInMoney;
    private int postPeople;
    private int postStatus;
    private String postImg;
    private User user;
    private Data postData;

    public Post() {
    }

    @Override
    public String toString() {
        return "Post{" +
                "postId=" + postId +
                ", postName='" + postName + '\'' +
                ", postMoney=" + postMoney +
                ", postDay=" + postDay +
                ", postInMoney=" + postInMoney +
                ", postPeople=" + postPeople +
                ", postStatus=" + postStatus +
                ", postImg='" + postImg + '\'' +
                ", user=" + user +
                ", postData=" + postData +
                '}';
    }

    public Post(int postId, String postName, double postMoney, Data postDay, double postInMoney, int postPeople, int postStatus, String postImg, User user, Data postData) {
        this.postId = postId;
        this.postName = postName;
        this.postMoney = postMoney;
        this.postDay = postDay;
        this.postInMoney = postInMoney;
        this.postPeople = postPeople;
        this.postStatus = postStatus;
        this.postImg = postImg;
        this.user = user;
        this.postData = postData;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public void setPostName(String postName) {
        this.postName = postName;
    }

    public void setPostMoney(double postMoney) {
        this.postMoney = postMoney;
    }

    public void setPostDay(Data postDay) {
        this.postDay = postDay;
    }

    public void setPostInMoney(double postInMoney) {
        this.postInMoney = postInMoney;
    }

    public void setPostPeople(int postPeople) {
        this.postPeople = postPeople;
    }

    public void setPostStatus(int postStatus) {
        this.postStatus = postStatus;
    }

    public void setPostImg(String postImg) {
        this.postImg = postImg;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public void setPostData(Data postData) {
        this.postData = postData;
    }

    public int getPostId() {
        return postId;
    }

    public String getPostName() {
        return postName;
    }

    public double getPostMoney() {
        return postMoney;
    }

    public Data getPostDay() {
        return postDay;
    }

    public double getPostInMoney() {
        return postInMoney;
    }

    public int getPostPeople() {
        return postPeople;
    }

    public int getPostStatus() {
        return postStatus;
    }

    public String getPostImg() {
        return postImg;
    }

    public User getUser() {
        return user;
    }

    public Data getPostData() {
        return postData;
    }
}
