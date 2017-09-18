package com.example.demo.controller;

//import com.example.demo.model.Tour;
//import com.example.demo.services.TourService;

import com.example.demo.model.Tour;
import com.example.demo.services.SliderService;
import com.example.demo.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
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
    public String main() {return "redirect:/home";}


    @RequestMapping(value = "/home")
    public String toIndex(ModelMap modelMap) {
        modelMap.addAttribute("sliders", sliderService.getSliderListOrderedByPosition());
        modelMap.addAttribute("tours", tourService.getTours());

        return "index";
    }



    @RequestMapping(value = "/contacts")
    public String toContacts() {
        return "contacts";
    }

    @RequestMapping(value = "/gallery")
    public String toGallery(ModelMap modelMap) {
        modelMap.addAttribute("tours", tourService.getTours());
        return "gallery";
    }

    @RequestMapping(value = "/tours")
    public String toTours(ModelMap modelMap) {
        modelMap.addAttribute("tours",tourService.getTours());
        modelMap.addAttribute("toursForSearch",tourService.getTours());
        return "tours";
    }

    @RequestMapping(value = "/tour/{id}")
    public String toTorDiteils(@PathVariable("id") long id, ModelMap modelMap){
        modelMap.addAttribute("tour",tourService.getById(id));
        return "tour";
    }

    @RequestMapping(value = "/admin")
    public String toAdmin(ModelMap modelMap) {
        modelMap.addAttribute("sliders", sliderService.getSlidersList());
        modelMap.addAttribute("tours", tourService.getTours());
        return "admin";
    }


}
