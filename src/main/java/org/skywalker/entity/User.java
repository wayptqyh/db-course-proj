package org.skywalker.entity;

public class User {
    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", label='" + label + '\'' +
                ", name='" + name + '\'' +
                ", password='" + password + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                '}';
    }

    public User() {}

    public User(Integer userId, String label, String name, String password, String phone, String email) {
        this.userId = userId;
        this.label = label;
        this.name = name;
        this.password = password;
        this.phone = phone;
        this.email = email;
    }

    private Integer userId;
    private String label;
    private String name;
    private String password;
    private String phone;
    private String email;

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId == null ? null : userId;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label == null ? null : label.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone == null ? null : phone.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }
}
