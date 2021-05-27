package com.yz.yx.bean;

public class User {
    private int userId;
    private String name;
    private String userName;
    private String userPw;
    private String userEmail;
    private int userNumber;

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", name='" + name + '\'' +
                ", userName='" + userName + '\'' +
                ", userPw='" + userPw + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userNumber=" + userNumber +
                '}';
    }

    public User(int userId, String name, String userName, String userPw, String userEmail, int userNumber) {
        this.userId = userId;
        this.name = name;
        this.userName = userName;
        this.userPw = userPw;
        this.userEmail = userEmail;
        this.userNumber = userNumber;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPw() {
        return userPw;
    }

    public void setUserPw(String userPw) {
        this.userPw = userPw;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public int getUserNumber() {
        return userNumber;
    }

    public void setUserNumber(int userNumber) {
        this.userNumber = userNumber;
    }
}
