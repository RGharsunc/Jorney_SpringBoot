package com.example.demo.model;


import javax.persistence.*;
import java.util.Date;

/**
 * Created by Vardan on 08.08.2017.
 */
@Entity
@Table(name = "tour")
public class Tour {

    private long id;
    private String name;
    private double price;
    private String operator;
    private String description;
    private String destination;
    private String departureDate;
    private String arriveDate;
    private String image1;
    private String image2;
    private String duration;
    private long index;  //this is the index of topTour level

    @Id
    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getOperator() {
        return operator;
    }

    public void setOperator(String operator) {
        this.operator = operator;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    @Column(name = "departing_date",nullable = true)
    public String getDepartureDate() {
        return departureDate;
    }

    public void setDepartureDate(String departureDate) {
        this.departureDate = departureDate;
    }

    @Column(name = "arriving_date" ,nullable = true)
    public String getArriveDate() {
        return arriveDate;
    }

    public void setArriveDate(String arriveDate) {
        this.arriveDate = arriveDate;
    }

    public String getImage1() {
        return image1;
    }

    public void setImage1(String image1) {
        this.image1 = image1;
    }

    public String getImage2() {
        return image2;
    }

    public void setImage2(String image2) {
        this.image2 = image2;
    }

    public String getDuration() {
        return duration;
    }

    public void setDuration(String duration) {
        this.duration = duration;
    }

  @Column(name = "level")
    public long getIndex() {
        return index;
    }

    public void setIndex(long index) {
        this.index = index;
    }

}
