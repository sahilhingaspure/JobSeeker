/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.jobseeker;


public class User {
     private String username;
     private String gender;
     private String mobileno;
     private String city;
     private String education;
     private String filePath;
    
    public User(String username, String gender, String mobileno, String city, String education, String filePath) {
        this.username = username;
        this.gender = gender;
        this.mobileno = mobileno;
        this.city = city;
        this.education = education;
        this.filePath = filePath;
    }

    
    public String getUsername() { return username; }
    public String getGender() { return gender; }
    public String getMobileno() { return mobileno; }
    public String getCity() { return city; }
    public String getEducation() { return education; }
    public String getFilePath() { return filePath; }
    
}