package com.example.demo.services;

import com.example.demo.model.Asd;
import com.example.demo.repository.AsdRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

/**
 * Created by Vardan on 09.08.2017.
 */
@Service
public class AsdService {
    @Autowired
    private  AsdRepository asdRepository;

    public void addAsd(Asd asd) {
    asdRepository.save(asd);
    }

    public Asd fileUpload(Asd asd, MultipartFile image) throws IOException {
        //file upload
        File dir = new File("d:\\java");
        if (!dir.exists()) {
            dir.mkdir();
        }
        //create the file on server
        String asdPic = System.currentTimeMillis() + "_" + image.getOriginalFilename();
        File serverFile = new File(dir.getAbsolutePath() + "\\" + asdPic);
        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
        stream.write(image.getBytes());
        stream.close();
        asd.setImage3(asdPic);
        return asd;


    }
}
