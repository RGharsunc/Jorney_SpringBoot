package com.example.demo.specifications;

import com.example.demo.model.EntityFromSearchBar;
import com.example.demo.model.Tour;
import org.springframework.data.jpa.domain.Specification;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by Vardan on 16.08.2017.
 */
public class TourSpecifications implements Specification<Tour> {

    private final EntityFromSearchBar efs;

    public TourSpecifications(EntityFromSearchBar entSearch) {
        this.efs = entSearch;
    }


    @Override
    public Predicate toPredicate(Root<Tour> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder cb) {

        List<Predicate> predicates = new ArrayList<>();

        if (efs.getDestination() != null && !efs.getDestination().isEmpty()) {
            predicates.add(root.get("name").in(efs.getName()));
        }
        if (efs.getDestination() != null && !efs.getDestination().isEmpty()) {
            predicates.add(root.get("destination").in(efs.getDestination()));
        }
        if (efs.getArrivingDate() != null && !efs.getArrivingDate().isEmpty()) {
            predicates.add(cb.lessThan(root.get("arriveDate"),efs.getArrivingDate()));
        }
        if (efs.getDepartingDate() != null && !efs.getDepartingDate().isEmpty()) {
            predicates.add(cb.greaterThan(root.get("departureDate"),efs.getDepartingDate()));
        }
        if (efs.getPrice()>0) {
            predicates.add(cb.lessThan(root.get("price"),efs.getPrice()));
        }
        if (efs.getDuration()>0) {
            predicates.add(cb.lessThan(root.get("duration"),efs.getDuration()));
        }

        return cb.and(predicates.toArray(new Predicate[0]));
    }


}
