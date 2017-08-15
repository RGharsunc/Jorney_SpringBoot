package com.example.demo.controller;

import com.example.demo.model.Asd;
import com.example.demo.model.Slider;
import com.example.demo.model.Tour;
import com.example.demo.services.AsdService;
import com.example.demo.services.SliderService;
import com.example.demo.services.TourService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.LinkedHashSet;
import java.util.Set;

/**
 * Created by Vardan on 08.08.2017.
 */
@Controller
public class AdminController {
    @Value("${jorney.filedownload.path}")
    private String downloadPath;


    @Autowired
    private TourService tourService;
    @Autowired
    private AsdService asdService;
    @Autowired
    private SliderService sliderService;

    @RequestMapping(value = "/admin/tour/add", method = RequestMethod.POST)
    public String addTour(@ModelAttribute("tour") Tour tour,

                          @RequestParam("img1") MultipartFile image1,
                          @RequestParam("img2") MultipartFile image2
    ) throws IOException {
        Tour tourWithImages = tourService.fileUpload(tour, image1, image2);
        tourService.addTour(tourWithImages);
        return "redirect:/admin";
    }


    @ResponseBody
    @RequestMapping(value = "/getImage", method = RequestMethod.GET)
    public byte[] getImageAsByteArray(@RequestParam("filename") String filename) throws Exception {
        InputStream in = new FileInputStream(downloadPath + filename);
        return org.apache.commons.io.IOUtils.toByteArray(in);
    }


    @RequestMapping(value = "/addAsd", method = RequestMethod.POST)
    public String addProduct(@ModelAttribute("addProduct") Asd asd,
                             @RequestParam("img3") MultipartFile image
    ) throws IOException {
        Asd asdWithFile = asdService.fileUpload(asd, image);
        asdService.addAsd(asdWithFile);
        return "redirect:/admin";


    }

    @RequestMapping(value = "/admin/topTour/add")
    public String setTopTours(@RequestParam("toursId1") long id1,
                              @RequestParam("toursId2") long id2,
                              @RequestParam("toursId3") long id3) {
        tourService.topToursSet(id1, id2, id3);

        return "redirect:/admin";
    }

}
