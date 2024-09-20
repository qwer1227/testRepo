package com.jhta.afterpay.user;

<<<<<<< HEAD
=======
import java.awt.*;
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
import java.util.Date;

public class User {
    private int no;
    private String email;
    private String id;
    private String pwd;
    private String name;
    private String tel;
    private String isBanned;
    private String isSignOut;
    private int point;
<<<<<<< HEAD
    private int totalPoint;
    private int totalUsedPoint;
    private Date createdDate;
    private String gradeId;

=======
    private Date createdDate;
    private String gradeId;

    public User() {
    }
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a

    @Override
    public String toString() {
        return "User{" +
                "no=" + no +
                ", email='" + email + '\'' +
                ", id='" + id + '\'' +
                ", pwd='" + pwd + '\'' +
                ", name='" + name + '\'' +
                ", tel='" + tel + '\'' +
                ", isBanned='" + isBanned + '\'' +
                ", isSignOut='" + isSignOut + '\'' +
                ", point=" + point +
<<<<<<< HEAD
                ", totalPoint=" + totalPoint +
                ", totalUsedPoint=" + totalUsedPoint +
=======
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
                ", createdDate=" + createdDate +
                ", gradeId='" + gradeId + '\'' +
                '}';
    }

<<<<<<< HEAD
    public int getTotalPoint() {
        return totalPoint;
    }

    public void setTotalPoint(int totalPoint) {
        this.totalPoint = totalPoint;
    }

    public int getTotalUsedPoint() {
        return totalUsedPoint;
    }

    public void setTotalUsedPoint(int totalUsedPoint) {
        this.totalUsedPoint = totalUsedPoint;
    }

    public User() {
    }

=======
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getIsBanned() {
        return isBanned;
    }

    public void setIsBanned(String isBanned) {
        this.isBanned = isBanned;
    }

    public String getIsSignOut() {
        return isSignOut;
    }

    public void setIsSignOut(String isSignOut) {
        this.isSignOut = isSignOut;
    }

    public int getPoint() {
        return point;
    }

    public void setPoint(int point) {
        this.point = point;
    }

    public Date getCreatedDate() {
        return createdDate;
    }

    public void setCreatedDate(Date createdDate) {
        this.createdDate = createdDate;
    }

    public String getGradeId() {
        return gradeId;
    }

    public void setGradeId(String gradeId) {
        this.gradeId = gradeId;
    }
<<<<<<< HEAD

=======
>>>>>>> f12f52923fc0337784d64a394cd8d1081f88f47a
}
