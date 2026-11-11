
package com.navana.learning.service;

import com.navana.learning.model.LearningTopic;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.IntStream;

@Service
public class IntuneService {

    private final List<String> topics = List.of(
        // Intune Fundamentals
        "Introduction to Microsoft Intune",
        "Intune Architecture",
        "Intune Admin Center",
        "MDM and MAM",
        "Device Enrollment",
        "Windows Autopilot",
        "Device Groups",

        // IT Support Related
        "Employee Laptop Onboarding",
        "Device Enrollment Troubleshooting",
        "Company Portal Issues",
        "Application Deployment",
        "Password and PIN Support",
        "BitLocker Recovery",
        "Device Compliance Issues",
        "Remote Device Wipe",
        "Device Retirement",
        "Windows Update Troubleshooting",
        "Conditional Access",

        // DevOps Related
        "PowerShell Automation",
        "Microsoft Graph API",
        "Application Packaging",
        "Win32 Application Deployment",
        "Git and GitHub for Scripts",
        "Azure DevOps Pipelines",
        "GitHub Actions",
        "Intune Automation",
        "Terraform Concepts",
        "Automated Device Reporting",

        // Advanced
        "Configuration Profiles",
        "Security Baselines",
        "Endpoint Security",
        "Microsoft Defender Integration",
        "Compliance Policies",
        "Update Rings",
        "Role-Based Access Control",
        "Intune Monitoring and Reports",
        "Advanced Troubleshooting"
    );

    public List<LearningTopic> getTopics() {
        return IntStream.range(0, topics.size())
            .mapToObj(i -> new LearningTopic(
                (long) i + 1,
                "Microsoft Intune",
                topics.get(i),
                "Learn Intune configuration, practical implementation and troubleshooting."
            ))
            .toList();
    }
}

