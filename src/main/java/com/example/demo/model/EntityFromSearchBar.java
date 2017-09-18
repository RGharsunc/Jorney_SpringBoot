package com.example.demo.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by Vardan on 16.08.2017.
 */
@Entity
@Table(name = "efs")
public class EntityFromSearchBar {
    private long id;
    private String name;
    private String destination;
    private String departingDate;
    private String arrivingDate;
    private double price;
    private int duration;


    public String getDestination() {
        return destination;
    }
    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }



    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getDepartingDate() {
        return departingDate;
    }

    public void setDepartingDate(String departingDate) {
        this.departingDate = departingDate;
    }

    public String getArrivingDate() {
        return arrivingDate;
    }

    public void setArrivingDate(String arrivingDate) {
        this.arrivingDate = arrivingDate;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
