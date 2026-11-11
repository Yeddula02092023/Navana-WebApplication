
package com.navana.learning.service;

import com.navana.learning.dto.ReviewRequest;
import com.navana.learning.entity.Review;
import com.navana.learning.repository.ReviewRepository;

import org.springframework.stereotype.Service;

@Service
public class ReviewService {

    private final ReviewRepository repository;

    public ReviewService(ReviewRepository repository) {
        this.repository = repository;
    }

    public Review saveReview(ReviewRequest request) {

        Review review = new Review(
            request.rating(),
            request.feedback()
        );

        return repository.save(review);
    }
}

