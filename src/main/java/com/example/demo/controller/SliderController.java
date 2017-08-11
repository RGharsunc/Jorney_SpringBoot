package com.example.demo.controller;

import com.example.demo.model.Slider;
import com.example.demo.services.SliderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import java.io.IOException;
import java.util.List;

/**
 * Created by Vardan on 31.07.2017.
 */

@Controller
public class SliderController {
    @Autowired
    private SliderService sliderService;

    @RequestMapping(value = "/admin/homeslider/add", method = RequestMethod.POST)
    public String addCarousel(@ModelAttribute("slider") Slider slider,
                              @RequestParam("img") MultipartFile image,
                              @RequestParam("sliderPosition") long position) throws IOException {

        if (position == 0) {
            if (sliderService.getSliderListOrderedByPosition() != null) {
                List<Slider> sliderListOrderedByPosition = sliderService.getSliderListOrderedByPosition();
                for (Slider slider1 : sliderListOrderedByPosition) {
                    slider1.setPosition(slider1.getPosition()+1);
                    sliderService.addSlider(slider1);
                }

                slider.setPosition(sliderService.getSliderListOrderedByPosition().get(0).getPosition()-1);

            } else {
                slider.setPosition(sliderService.getSliderListOrderedByPosition().get(0).getPosition() - 1);

            }
        } else {
            for (Slider slide:sliderService.getSliderListOrderedByPosition()){
               if (slide.getPosition()>position){
                   slide.setPosition(slide.getPosition()+1);
                   sliderService.addSlider(slide);
               }
            }

            slider.setPosition(position + 1);
        }
        sliderService.addSlider( sliderService.fileUpload(slider,image));
        return "redirect:/admin";


    }

}
