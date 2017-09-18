package com.example.demo.services;

import com.example.demo.model.EntityFromSearchBar;
import com.example.demo.model.Tour;
import com.example.demo.repository.TourRepository;
import com.example.demo.specifications.TourSpecifications;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Vardan on 08.08.2017.
 */
@Service
public class TourService {

    @Autowired
    private TourRepository tourRepository;

    public List<Tour> getTours() {

        return tourRepository.findAll();
    }

    public void addTour(Tour tour) {
        tourRepository.save(tour);
    }

    public Tour fileUpload(Tour tour, MultipartFile image1, MultipartFile image2) throws IOException {
        //file upload
        File dir = new File("d:\\java");
        if (!dir.exists()) {
            dir.mkdir();
        }
        //create the file on server
        String tourPic1 = System.currentTimeMillis() + "_" + image1.getOriginalFilename();
        String tourPic2 = System.currentTimeMillis() + "_" + image2.getOriginalFilename();
        File serverFile1 = new File(dir.getAbsolutePath() + "\\" + tourPic1);
        File serverFile2 = new File(dir.getAbsolutePath() + "\\" + tourPic2);
        BufferedOutputStream stream1 = new BufferedOutputStream(new FileOutputStream(serverFile1));
        BufferedOutputStream stream2 = new BufferedOutputStream(new FileOutputStream(serverFile2));
        stream1.write(image1.getBytes());
        stream2.write(image2.getBytes());
        stream1.close();
        stream2.close();
        tour.setImage1(tourPic1);
        tour.setImage2(tourPic2);
        return tour;


    }

    public Tour setTopTourIndexById(long id, int index) {
        Tour tourByIndex = tourRepository.findByIndex(index);
        Tour tourById = tourRepository.getOne(id);
        if (tourByIndex != null) {
            tourByIndex.setIndex(0);
            tourRepository.save(tourByIndex);
            tourById.setIndex(index);
            tourRepository.save(tourById);
        } else {
            tourById.setIndex(index);
            tourRepository.save(tourById);
        }
        return tourById;
    }


    public void topToursSet(long id1, long id2, long id3) {
        setTopTourIndexById(id1, 1);
        setTopTourIndexById(id2, 2);
        setTopTourIndexById(id3, 3);
    }


    public Date parseStringToDate(String strDate) {
        SimpleDateFormat formatter = new SimpleDateFormat("dd-mm-yy");
        Date date = null;
        try {
            date = formatter.parse(strDate);

        } catch (ParseException e) {
            e.printStackTrace();
        }
        return date;
    }

    public List<Tour> findbyNameAndPriceAfter() {
        double price = 20;
        String name = null;
        List<Tour> tours = tourRepository.findToursByNameAndPriceAfter(name, price);
        return tours;
    }

    public List<Tour> getToursList() {
        return tourRepository.findAll();
    }

    public Tour getById(long id) {
        return tourRepository.findOne(id);
    }

    public List<Tour> getBySearchBarData(EntityFromSearchBar esf) {
        TourSpecifications ts = new TourSpecifications(esf);
        List<Tour> tours = tourRepository.findAll(ts);
        return tours;

    }
}
