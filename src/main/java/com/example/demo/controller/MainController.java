package com.example.demo.controller;

//import com.example.demo.model.Tour;
//import com.example.demo.services.TourService;

import com.example.demo.model.Tour;
import com.example.demo.services.SliderService;
import com.example.demo.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by Vardan on 08.08.2017.
 */
@Controller
public class MainController {
    @Autowired
    private TourService tourService;
    @Autowired
    private SliderService sliderService;

    @RequestMapping(value = "/")
    public String main() {
        return "redirect:/index";
    }


    @RequestMapping(value = "/index")
    public String toIndex(ModelMap modelMap) {
        modelMap.addAttribute("sliders", sliderService.getSliderListOrderedByPosition());
        modelMap.addAttribute("tours", tourService.getTours());

        return "index";
    }


    @RequestMapping(value = "/about")
    public String toAbout() {
        return "about";
    }

    @RequestMapping(value = "/contacts")
    public String toContacts() {
        return "contacts";
    }

    @RequestMapping(value = "/gallery")
    public String toGallery(ModelMap modelMap) {
        List<Tour> tours = tourService.getTours();

        modelMap.addAttribute("tours", tours);
        return "gallery";
    }

    @RequestMapping(value = "/tours")
    public String toTours() {
        return "tours";
    }

    @RequestMapping(value = "/admin")
    public String toAdmin(ModelMap modelMap) {
        modelMap.addAttribute("sliders", sliderService.getSlidersList());
        modelMap.addAttribute("tours", tourService.getTours());
        return "admin";
    }


}
