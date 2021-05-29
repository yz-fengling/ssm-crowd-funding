package com.yz.yx.bean;

import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

public class Post {
    private int postId;
    private String postName;
    private double postMoney;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date postDay;
    private double postInMoney;
    private int postPeople;
    private int postStatus;
    private String postImg;
    private User user;
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date postDate;

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
                ", postDate=" + postDate +
                '}';
    }

    public Post(int postId, String postName, double postMoney, Date postDay, double postInMoney, int postPeople, int postStatus, String postImg, User user, Date postDate) {
        this.postId = postId;
        this.postName = postName;
        this.postMoney = postMoney;
        this.postDay = postDay;
        this.postInMoney = postInMoney;
        this.postPeople = postPeople;
        this.postStatus = postStatus;
        this.postImg = postImg;
        this.user = user;
        this.postDate = postDate;
    }

    public Date getPostDate() {
        return postDate;
    }

    public void setPostDate(Date postDate) {
        this.postDate = postDate;
    }

    public Date getPostDay() {
        return postDay;
    }

    public void setPostDay(Date postDay) {
        this.postDay = postDay;
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


    public int getPostId() {
        return postId;
    }

    public String getPostName() {
        return postName;
    }

    public double getPostMoney() {
        return postMoney;
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

}
