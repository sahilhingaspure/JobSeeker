/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.mycompany.jobseeker;

import java.io.Serializable;

/**
 *
 * @author Anushka
 */
import java.io.Serializable;

public class Admin implements Serializable {
    private String jobRole;
    private String location;
    private int vacancy;
    private String time;
    private String datevalidation;
    private String packages;

    public Admin() { }
    public Admin(String jobRole, String location, int vacancy, String time, String datevalidation, String packages) {
        this.jobRole = jobRole;
        this.location = location;
        this.vacancy = vacancy;
        this.time = time;
        this.datevalidation = datevalidation;
        this.packages = packages;
    }

    // Getters and Setters
    public String getJobRole() {
        return jobRole;
    }

    public void setJobRole(String jobRole) {
        this.jobRole = jobRole;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public int getVacancy() {
        return vacancy;
    }

    public void setVacancy(int vacancy) {
        this.vacancy = vacancy;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getDateValidation() {
        return datevalidation;
    }

    public void setDateValidation(String datevalidation) {
        this.datevalidation = datevalidation;
    }

    public String getPackages() {
        return packages;
    }

    public void setPackages(String packages) {
        this.packages = packages;
    }
}