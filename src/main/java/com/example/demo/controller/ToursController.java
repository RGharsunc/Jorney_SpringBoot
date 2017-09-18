package com.example.demo.controller;

import com.example.demo.model.EntityFromSearchBar;
import com.example.demo.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by Vardan on 16.08.2017.
 */
@Controller
public class ToursController {
    @Autowired
    TourService tourService;
    EntityFromSearchBar efs=new EntityFromSearchBar();


    @RequestMapping(value = "/tours/from/search/",method = RequestMethod.POST)
    public String toursListFromSearchBar(ModelMap modelMap) {
        efs.setDestination("Yerevan");
        efs.setDuration(1);
        efs.setName("TATEV");
        efs.setDestination("Yerevan");
        modelMap.addAttribute("tours",tourService.getBySearchBarData(efs));
        modelMap.addAttribute("toursForSearch",tourService.getTours());

        return "tours";
    }

}
