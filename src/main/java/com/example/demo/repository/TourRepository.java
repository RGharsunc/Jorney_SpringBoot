package com.example.demo.repository;

import com.example.demo.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;

import java.sql.Time;
import java.util.Date;
import java.util.List;

/**
 * Created by Vardan on 08.08.2017.
 */
@Repository
public interface TourRepository extends JpaRepository<Tour, Long>, JpaSpecificationExecutor<Tour> {


    Tour findByIndex(long index);

    List<Tour> findToursByNameAndPriceAfter(String name, double price);

    List<Tour> findToursByDepartureDateAfterAndDestinationAndPriceBeforeAndDurationBefore(Date departureDate,
                                                                                          String destination,
                                                                                          double price,
                                                                                          int duration);


}
