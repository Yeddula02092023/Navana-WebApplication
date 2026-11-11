
package com.navana.learning.entity;

import jakarta.persistence.*;

@Entity
@Table(name = "learning_reviews")
public class Review {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private int rating;

    @Column(length = 1000)
    private String feedback;

    public Review() {
    }

    public Review(int rating, String feedback) {
        this.rating = rating;
        this.feedback = feedback;
    }

    public Long getId() {
        return id;
    }

    public int getRating() {
        return rating;
    }

    public void setRating(int rating) {
        this.rating = rating;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }
}

