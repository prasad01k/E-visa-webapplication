package com.example.registrationLoginDemo.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "visa_application")
public class UserApplication {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String fullname;
    private String email;
    private String cor;
    private int passportnumber;
    private String dob;
    private String visatype;
    private String pov;
    private String Tdate;
    private int nodays;

    public UserApplication() {
        // Default constructor
    }

    public UserApplication(String fullname, String email, String cor, int passportnumber, String dob, String visatype, String pov, String tdate, int nodays) {
        this.fullname = fullname;
        this.email = email;
        this.cor = cor;
        this.passportnumber = passportnumber;
        this.dob = dob;
        this.visatype = visatype;
        this.pov = pov;
        Tdate = tdate;
        this.nodays = nodays;
    }

    // Getters and setters for fields

    public Long getId() {
        return id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCor() {
        return cor;
    }

    public void setCor(String cor) {
        this.cor = cor;
    }

    public int getPassportnumber() {
        return passportnumber;
    }

    public void setPassportnumber(int passportnumber) {
        this.passportnumber = passportnumber;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getVisatype() {
        return visatype;
    }

    public void setVisatype(String visatype) {
        this.visatype = visatype;
    }

    public String getPov() {
        return pov;
    }

    public void setPov(String pov) {
        this.pov = pov;
    }

    public String getTdate() {
        return Tdate;
    }

    public void setTdate(String tdate) {
        Tdate = tdate;
    }

    public int getNodays() {
        return nodays;
    }

    public void setNodays(int nodays) {
        this.nodays = nodays;
    }
}
