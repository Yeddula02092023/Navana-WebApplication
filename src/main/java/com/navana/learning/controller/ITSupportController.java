
package com.navana.learning.controller;

import com.navana.learning.service.ITSupportService;
import com.navana.learning.model.LearningTopic;

import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/itsupport")
public class ITSupportController {

    private final ITSupportService service;

    public ITSupportController(ITSupportService service) {
        this.service = service;
    }

    @GetMapping("/topics")
    public List<LearningTopic> getTopics() {
        return service.getTopics();
    }
}

