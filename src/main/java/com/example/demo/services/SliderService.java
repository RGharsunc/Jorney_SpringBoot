package com.example.demo.services;

import com.example.demo.model.Slider;
import com.example.demo.repository.SliderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

/**
 * Created by Vardan on 10.08.2017.
 */
@Service
public class SliderService {
    @Autowired
    private  SliderRepository sliderRepository;

    public List<Slider> getSlidersList() {
        return sliderRepository.findAll();

    }


    public Slider fileUpload(Slider slider, MultipartFile image) throws IOException {
        //file upload
        File dir = new File("d:\\java");
        if (!dir.exists()) {
            dir.mkdir();
        }
        //create the file on server
        String sliderPic = System.currentTimeMillis() + "_" + image.getOriginalFilename();
        File serverFile = new File(dir.getAbsolutePath() + "\\" + sliderPic);
        BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
        stream.write(image.getBytes());
        stream.close();
        slider.setImage(sliderPic);
        return slider;
    }
    public void addSlider(Slider slider){
        sliderRepository.save(slider);
    }

    public List<Slider> getSliderListOrderedByPosition() {
        return sliderRepository.findAll(sortByPositionAsc());
    }

    private Sort sortByPositionAsc() {
        return new Sort(Sort.Direction.ASC, "position");
    }
}
