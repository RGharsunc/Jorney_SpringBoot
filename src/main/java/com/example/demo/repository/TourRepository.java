package com.example.demo.repository;

import com.example.demo.model.Tour;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Vardan on 08.08.2017.
 */
@Repository
public interface TourRepository extends JpaRepository<Tour,Long>{
Tour findByIndex(long index);
}
