package com.example.demo.services;

import com.example.demo.model.Tour;
import com.example.demo.repository.TourRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.web.multipart.MultipartFile;

import java.io.*;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/**
 * Created by Vardan on 08.08.2017.
 */
@Service
public class TourService {

    @Autowired
    private  TourRepository tourRepository;

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
}
