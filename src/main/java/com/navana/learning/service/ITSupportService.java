
package com.navana.learning.service;

import com.navana.learning.model.LearningTopic;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.stream.IntStream;

@Service
public class ITSupportService {

    private final List<String> topics = List.of(
        "IT Support Fundamentals",
        "Employee Onboarding",
        "Employee Offboarding",
        "Active Directory",
        "Account Creation",
        "Account Unlock",
        "Password Reset",
        "MFA Reset",
        "Microsoft Authenticator",
        "Microsoft Entra ID",
        "Group Membership",
        "Distribution Lists",
        "Shared Mailboxes",
        "Microsoft 365 Administration",
        "Outlook Troubleshooting",
        "Microsoft Teams Support",
        "OneDrive Support",
        "SharePoint Access",
        "ServiceNow Ticket Creation",
        "ServiceNow Incident Management",
        "ServiceNow Ticket Assignment",
        "Ticket Prioritization",
        "Ticket Escalation",
        "SLA Management",
        "Ticket Resolution and Closure",
        "Application Installation",
        "Software Uninstallation",
        "Software License Management",
        "VPN Troubleshooting",
        "Wi-Fi Troubleshooting",
        "DNS and DHCP",
        "Network Troubleshooting",
        "Printer Troubleshooting",
        "Windows 10 and 11 Support",
        "Windows Updates",
        "Hardware Troubleshooting",
        "BitLocker Recovery",
        "Antivirus Troubleshooting",
        "Remote Desktop Support",
        "IT Asset Management",
        "Software Inventory",
        "Email Troubleshooting",
        "File and Folder Permissions",
        "Backup and Recovery",
        "Knowledge Base Documentation",
        "Root Cause Analysis",
        "L1, L2 and L3 Support",
        "Real-Time IT Support Scenarios"
    );

    public List<LearningTopic> getTopics() {
        return IntStream.range(0, topics.size())
            .mapToObj(i -> new LearningTopic(
                (long) i + 1,
                "IT Support",
                topics.get(i),
                "Learn the process, practical steps and troubleshooting."
            ))
            .toList();
    }
}

