
package com.navana.learning.controller;

import com.navana.learning.service.IntuneService;
import com.navana.learning.model.LearningTopic;

import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/intune")
public class IntuneController {

    private final IntuneService service;

    public IntuneController(IntuneService service) {
        this.service = service;
    }

    @GetMapping("/topics")
    public List<LearningTopic> getTopics() {
        return service.getTopics();
    }
}

