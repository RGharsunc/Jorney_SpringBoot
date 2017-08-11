package com.example.demo.services;

import com.example.demo.model.UserEntity;
import com.example.demo.repository.UserEntityRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Vardan on 11.08.2017.
 */
@Service
public class UserService {
    @Autowired
    private UserEntityRepository userEntityRepository;

    public void registerUser(UserEntity userEntity){
        userEntityRepository.save(userEntity);
    }
}
