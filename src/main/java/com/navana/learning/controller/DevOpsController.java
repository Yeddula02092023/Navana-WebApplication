
package com.navana.learning.controller;

import com.navana.learning.service.DevOpsService;
import com.navana.learning.model.LearningTopic;

import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/devops")
public class DevOpsController {

    private final DevOpsService devOpsService;

    public DevOpsController(DevOpsService devOpsService) {
        this.devOpsService = devOpsService;
    }

    @GetMapping("/aws")
    public List<LearningTopic> getAwsTopics() {
        return devOpsService.getAwsTopics();
    }

    @GetMapping("/azure")
    public List<LearningTopic> getAzureTopics() {
        return devOpsService.getAzureTopics();
    }
}

