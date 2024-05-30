package com.mycompany.contact.app;

public class Contact {
    private int id;
    private String name;
    private String numberoftel;
    private String country;
    private String job;

    public Contact(String name, String numberoftel, String country, String job) {
        this.id = id;
        this.name = name;
        this.numberoftel = numberoftel;
        this.country = country;
        this.job = job;
    }
    
    public int getId() {
        return id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNumberoftel() {
        return numberoftel;
    }

    public void setNumberoftel(String numberoftel) {
        this.numberoftel = numberoftel;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }
    
    
}

   
