package com.example.demo.repository;

import com.example.demo.model.UserEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Created by Vardan on 11.08.2017.
 */
@Repository
public interface UserEntityRepository extends JpaRepository<UserEntity,Long> {

}
