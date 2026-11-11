
package com.navana.learning.service;

import com.navana.learning.model.LearningTopic;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.IntStream;

@Service
public class DevOpsService {

    private final List<String> aws = List.of(
        "Introduction to DevOps",
        "AWS Cloud Fundamentals",
        "IAM Users, Groups and Roles",
        "EC2 and S3",
        "VPC and Networking",
        "Linux Administration",
        "Git and GitHub",
        "Jenkins CI/CD",
        "Docker",
        "Kubernetes",
        "Amazon EKS",
        "Terraform",
        "Ansible",
        "CloudFormation",
        "AWS CodePipeline",
        "AWS CodeBuild",
        "AWS CodeDeploy",
        "CloudWatch Monitoring",
        "AWS Security",
        "DevSecOps",
        "End-to-End AWS DevOps Project"
    );

    private final List<String> azure = List.of(
        "Introduction to Azure DevOps",
        "Azure Portal",
        "Azure Virtual Machines",
        "Azure Storage",
        "Azure Networking",
        "Microsoft Entra ID",
        "Azure Repos",
        "Azure Boards",
        "Azure Pipelines",
        "YAML Pipelines",
        "Build and Release Pipelines",
        "Docker",
        "Azure Container Registry",
        "Azure Kubernetes Service",
        "Terraform with Azure",
        "ARM Templates",
        "Bicep Templates",
        "Azure Monitor",
        "Azure Key Vault",
        "PowerShell Automation",
        "End-to-End Azure DevOps Project"
    );

    public List<LearningTopic> getAwsTopics() {
        return convert("AWS DevOps", aws);
    }

    public List<LearningTopic> getAzureTopics() {
        return convert("Azure DevOps", azure);
    }

    private List<LearningTopic> convert(
            String category, List<String> topics) {

        return IntStream.range(0, topics.size())
            .mapToObj(i -> new LearningTopic(
                (long) i + 1,
                category,
                topics.get(i),
                "Learn concepts, practical examples and troubleshooting."
            ))
            .toList();
    }
}

