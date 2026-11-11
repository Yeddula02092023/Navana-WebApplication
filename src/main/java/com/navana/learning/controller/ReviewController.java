
package com.navana.learning.controller;

import com.navana.learning.dto.ReviewRequest;
import com.navana.learning.service.ReviewService;

import jakarta.validation.Valid;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/reviews")
public class ReviewController {

    private final ReviewService service;

    public ReviewController(ReviewService service) {
        this.service = service;
    }

    @PostMapping
    public String submitReview(
            @Valid @RequestBody ReviewRequest request) {

        service.saveReview(request);

        return "Thank you for reviewing Navana Learning Skills!";
    }
}

