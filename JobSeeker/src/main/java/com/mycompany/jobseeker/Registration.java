package com.mycompany.jobseeker;

/**
 * Registration class for user details.
 * 
 * @author user
 */
public class Registration {
    private String Name;
    private String EmailId;
    private String Username;
    private String Password;

    public Registration() {
    }

    public Registration(String Name, String EmailId, String Username, String Password) {
        this.Name = Name;
        this.EmailId = EmailId;
        this.Username = Username;
        this.Password = Password;
    }

    public void setName(String Name) {
        this.Name = Name;
    }

    public String getName() {
        return Name;
    }

    public void setEmailId(String EmailId) {
        this.EmailId = EmailId;
    }

    public String getEmailId() {
        return EmailId;
    }

    public void setUsername(String Username) {
        this.Username = Username;
    }

    public String getUsername() {
        return Username;
    }

    public void setPassword(String Password) {
        this.Password = Password;
    }

    public String getPassword() {
        return Password;
    }

    public String display() {
        return "Registration Name: " + Name + "\nEmail: " + EmailId + "\nUsername: " + Username + "\nPassword: " + Password;
    }
}
