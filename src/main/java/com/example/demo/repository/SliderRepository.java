package com.example.demo.repository;

import com.example.demo.model.Slider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Vardan on 10.08.2017.
 */
@Repository
public interface SliderRepository extends JpaRepository<Slider,Long> {


}
