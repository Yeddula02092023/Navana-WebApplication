
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Navana Learning Skills</title>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: Arial, sans-serif;
}

body {
    background: #f1f5f9;
    color: #1e293b;
}

header {
    background: linear-gradient(120deg,#102a56,#1769aa);
    color: white;
    text-align: center;
    padding: 35px 15px;
}

header h1 {
    font-size: 35px;
    margin-bottom: 10px;
}

header p {
    font-size: 16px;
}

.language {
    text-align: right;
    padding: 15px 5%;
}

.language select {
    padding: 10px;
    border-radius: 6px;
    border: 1px solid #ccc;
}

.container {
    width: 90%;
    max-width: 1200px;
    margin: auto;
}

.welcome {
    text-align: center;
    padding: 25px;
}

.cards {
    display: grid;
    grid-template-columns: repeat(auto-fit,minmax(230px,1fr));
    gap: 20px;
    margin: 25px 0;
}

.card {
    background: white;
    padding: 30px 20px;
    border-radius: 12px;
    text-align: center;
    box-shadow: 0 4px 12px #00000012;
    cursor: pointer;
    transition: .3s;
    border-bottom: 4px solid #1769aa;
}

.card:hover {
    transform: translateY(-6px);
    box-shadow: 0 8px 20px #00000020;
}

.card h2 {
    color: #14549a;
    margin: 15px 0;
}

.card .emoji {
    font-size: 45px;
}

.card p {
    color: #64748b;
    line-height: 1.6;
}

.section {
    display: none;
    background: white;
    margin: 30px 0;
    padding: 25px;
    border-radius: 12px;
    box-shadow: 0 3px 12px #00000010;
}

.section.active {
    display: block;
}

.section h2 {
    color: #14549a;
    margin-bottom: 15px;
}

.section h3 {
    margin: 20px 0 10px;
    color: #1769aa;
}

.search {
    width: 100%;
    padding: 13px;
    border: 1px solid #cbd5e1;
    border-radius: 7px;
    margin: 15px 0;
    font-size: 15px;
}

.topic {
    background: #f8fafc;
    margin: 8px 0;
    padding: 14px;
    border-left: 4px solid #1769aa;
    border-radius: 5px;
    cursor: pointer;
}

.topic:hover {
    background: #eaf3ff;
}

.topic-details {
    display: none;
    padding: 12px 15px;
    color: #475569;
    line-height: 1.7;
    background: #eff6ff;
    border-radius: 5px;
    margin-top: 8px;
}

.back {
    background: #475569;
    color: white;
    padding: 10px 18px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
    margin-bottom: 20px;
}

.back:hover {
    background: #334155;
}

footer {
    background: #102a56;
    color: white;
    text-align: center;
    padding: 25px;
    margin-top: 40px;
}

.rating {
    text-align: center;
    padding: 30px 15px;
    background: white;
    border-radius: 12px;
    margin: 30px 0;
}

.stars {
    font-size: 35px;
    color: #cbd5e1;
    cursor: pointer;
    margin: 15px;
}

.stars span.selected {
    color: #f5a623;
}

textarea {
    width: 100%;
    max-width: 600px;
    height: 100px;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 7px;
    margin: 15px 0;
}

.submit {
    display: block;
    margin: 10px auto;
    background: #1769aa;
    color: white;
    padding: 12px 30px;
    border: none;
    border-radius: 6px;
    cursor: pointer;
}

.submit:hover {
    background: #102a56;
}

#thankyou {
    display: none;
    text-align: center;
    padding: 50px 20px;
    background: white;
    border-radius: 12px;
    margin: 30px 0;
}

#thankyou h2 {
    color: #16834b;
    margin-bottom: 15px;
}

</style>
</head>

<body>

<header>
    <h1>📚 Navana Learning Skills</h1>
    <p>Learn Today | Grow Tomorrow | Build Your Future</p>
</header>

<div class="language">
    <label for="language">🌐 Language: </label>
    <select id="language" onchange="changeLanguage()">
        <option value="en">English</option>
        <option value="ko">한국어 (Korean)</option>
        <option value="te">తెలుగు (Telugu)</option>
    </select>
</div>

<div class="container">

<div class="welcome">
    <h2 id="welcomeTitle">Welcome to Navana Learning Skills!</h2>
    <p id="welcomeText">
        Choose your learning path and improve your technical knowledge
        with our step-by-step learning guides.
    </p>
</div>

<div class="cards" id="mainCards">

    <div class="card" onclick="openSection('devops')">
        <div class="emoji">☁️</div>
        <h2 id="devopsTitle">DevOps</h2>
        <p>AWS DevOps and Azure DevOps complete learning roadmap.</p>
    </div>

    <div class="card" onclick="openSection('itsupport')">
        <div class="emoji">💻</div>
        <h2 id="supportTitle">IT Support</h2>
        <p>Learn real-world IT support, troubleshooting and service desk processes.</p>
    </div>

    <div class="card" onclick="openSection('intune')">
        <div class="emoji">🛡️</div>
        <h2 id="intuneTitle">Microsoft Intune</h2>
        <p>Learn device management, endpoint security and automation.</p>
    </div>

</div>

<!-- DEVOPS -->

<div class="section" id="devops">
<button class="back" onclick="goHome()">← Back to Home</button>

<h2>☁️ DevOps Learning Roadmap</h2>
<p>Choose your preferred cloud technology.</p>

<h3>1. AWS DevOps</h3>

<div id="awsTopics"></div>

<h3>2. Azure DevOps</h3>

<div id="azureTopics"></div>
</div>

<!-- IT SUPPORT -->

<div class="section" id="itsupport">
<button class="back" onclick="goHome()">← Back to Home</button>

<h2>💻 IT Support Complete Learning Roadmap</h2>
<p>Learn enterprise IT support and service desk activities.</p>

<div id="supportTopics"></div>
</div>

<!-- INTUNE -->

<div class="section" id="intune">
<button class="back" onclick="goHome()">← Back to Home</button>

<h2>🛡️ Microsoft Intune Learning Roadmap</h2>

<p>
Learn Microsoft Intune from beginner to advanced level,
with topics related to IT Support and DevOps.
</p>

<h3>1. Intune Fundamentals</h3>
<div id="intuneBasic"></div>

<h3>2. Intune for IT Support</h3>
<div id="intuneSupport"></div>

<h3>3. Intune for DevOps and Automation</h3>
<div id="intuneDevops"></div>

<h3>4. Advanced Intune Administration</h3>
<div id="intuneAdvanced"></div>
</div>

<!-- REVIEW -->

<div class="rating" id="review">
    <h2>⭐ Thank You for Visiting Navana Learning Skills!</h2>
    <p>
        We hope you enjoyed learning with us.
        Please provide your valuable review and rating.
    </p>

    <h3>How would you rate our learning platform?</h3>

    <div class="stars" id="stars">
        <span onclick="setRating(1)">★</span>
        <span onclick="setRating(2)">★</span>
        <span onclick="setRating(3)">★</span>
        <span onclick="setRating(4)">★</span>
        <span onclick="setRating(5)">★</span>
    </div>

    <p id="ratingText">Select your rating</p>

    <textarea id="feedback"
    placeholder="Write your valuable feedback here..."></textarea>

    <button class="submit" onclick="submitReview()">
        Submit Review
    </button>
</div>

<div id="thankyou">
    <h2>🎉 Thank You!</h2>
    <h3>Thank you for visiting Navana Learning Skills.</h3>
    <p>Your feedback and rating are valuable to us.</p>
    <p>Keep Learning and Keep Growing!</p>
    <button class="submit" onclick="location.reload()">
        Back to Home
    </button>
</div>

</div>

<footer>
    <p>© 2026 Navana Learning Skills | All Rights Reserved</p>
    <p>Learn • Practice • Improve • Succeed</p>
</footer>

<script>

// LEARNING TOPICS

const aws = [
"Introduction to DevOps",
"Introduction to AWS Cloud",
"AWS Global Infrastructure",
"IAM - Users, Groups, Roles and Policies",
"EC2 - Virtual Servers",
"S3 - Simple Storage Service",
"VPC - Virtual Private Cloud",
"Subnets, Route Tables and Internet Gateway",
"Security Groups and Network ACL",
"Load Balancer and Auto Scaling",
"Route 53 and DNS",
"RDS and Database Services",
"CloudWatch Monitoring",
"CloudTrail and Audit Logs",
"AWS CLI",
"AWS SDK",
"Linux Fundamentals",
"Git and GitHub",
"Git Branching and Merging",
"Git Pull Requests",
"Jenkins Installation and Configuration",
"Jenkins CI/CD Pipelines",
"Build and Deployment Automation",
"Docker Fundamentals",
"Docker Images and Containers",
"Dockerfile",
"Docker Compose",
"Amazon ECR",
"Kubernetes Fundamentals",
"Amazon EKS",
"Pods, Services and Deployments",
"Helm Charts",
"Terraform Fundamentals",
"Terraform Providers and Resources",
"Terraform Variables and Outputs",
"Terraform State Management",
"Infrastructure as Code",
"Ansible Fundamentals",
"Ansible Playbooks",
"AWS CloudFormation",
"CodeCommit and CodeBuild",
"AWS CodeDeploy",
"AWS CodePipeline",
"Secrets Manager",
"Systems Manager",
"Lambda and Serverless",
"Blue-Green Deployment",
"Canary Deployment",
"Monitoring and Alerting",
"DevSecOps Fundamentals",
"CI/CD Security",
"Backup and Disaster Recovery",
"Cost Optimization",
"Real-Time AWS DevOps Projects"
];

const azure = [
"Introduction to Microsoft Azure",
"Azure Portal Navigation",
"Azure Subscriptions",
"Resource Groups",
"Azure Virtual Machines",
"Azure Storage Accounts",
"Azure Virtual Network",
"Subnets and Network Security Groups",
"Azure Load Balancer",
"Application Gateway",
"Azure DNS",
"Azure Active Directory / Microsoft Entra ID",
"Role-Based Access Control (RBAC)",
"Azure Key Vault",
"Azure Monitor",
"Log Analytics Workspace",
"Application Insights",
"Git and GitHub",
"Azure Repos",
"Azure Boards",
"Azure Pipelines",
"YAML Pipelines",
"Classic Pipelines",
"Build and Release Pipelines",
"CI/CD Implementation",
"Self-Hosted Agents",
"Microsoft-Hosted Agents",
"Azure Artifacts",
"Azure Container Registry",
"Docker in Azure",
"Azure Kubernetes Service (AKS)",
"Kubernetes Administration",
"Helm Deployment",
"Terraform with Azure",
"Terraform State in Azure Storage",
"ARM Templates",
"Bicep Templates",
"Ansible with Azure",
"Azure Automation",
"PowerShell Automation",
"Azure CLI",
"Azure Functions",
"App Services",
"Deployment Slots",
"Blue-Green Deployment",
"Canary Release",
"Managed Identities",
"Secrets Management",
"DevSecOps and Security Scanning",
"Policy and Governance",
"Backup and Recovery",
"Cost Management",
"End-to-End Azure DevOps Projects"
];

const support = [
"Introduction to IT Support",
"IT Support Roles and Responsibilities",
"ITIL Fundamentals",
"Service Desk Fundamentals",
"Ticket Management",
"Incident Management",
"Problem Management",
"Change Management",
"Service Request Management",
"ServiceNow Introduction",
"ServiceNow Incident Creation",
"ServiceNow Ticket Assignment",
"ServiceNow Ticket Prioritization",
"ServiceNow Ticket Escalation",
"ServiceNow SLA Management",
"ServiceNow Resolution and Closure",
"Employee Onboarding Process",
"Employee Offboarding Process",
"New User Account Creation",
"Active Directory Fundamentals",
"User Account Unlock",
"Account Lockout Troubleshooting",
"Password Reset Process",
"Password Policy and Expiry",
"MFA Registration",
"MFA Reset and Troubleshooting",
"Microsoft Authenticator Setup",
"Microsoft Entra ID User Management",
"Group Membership Management",
"Distribution Lists",
"Shared Mailboxes",
"Microsoft 365 Administration",
"Outlook Configuration and Issues",
"Teams Installation and Troubleshooting",
"OneDrive Troubleshooting",
"SharePoint Access Issues",
"VPN Installation and Troubleshooting",
"Remote Desktop Support",
"Wi-Fi and Network Troubleshooting",
"DNS and DHCP Basics",
"IP Address Troubleshooting",
"LAN and WAN Fundamentals",
"Printer Installation and Troubleshooting",
"Application Installation Process",
"Software Uninstallation",
"Software License Management",
"Application Access Requests",
"Windows Installation",
"Windows 10 and Windows 11 Support",
"Windows Updates and Patching",
"Blue Screen Troubleshooting",
"System Performance Issues",
"Disk Space Management",
"Hardware Troubleshooting",
"Laptop and Desktop Configuration",
"Device Encryption and BitLocker",
"Antivirus and Endpoint Protection",
"Phishing Email Reporting",
"Email Delivery Issues",
"Browser Troubleshooting",
"File and Folder Permissions",
"Network Drive Mapping",
"IT Asset Management",
"Hardware Inventory",
"Software Inventory",
"Backup and Restore",
"Data Recovery",
"Remote Support Tools",
"IT Security Best Practices",
"Escalation to L2 and L3 Teams",
"Knowledge Base Documentation",
"Root Cause Analysis",
"Daily IT Support Operations",
"Real-Time IT Support Scenarios"
];

const intuneBasic = [
"Introduction to Microsoft Intune",
"Intune Architecture",
"Microsoft Intune Admin Center",
"Microsoft Entra ID Integration",
"Licensing and Requirements",
"MDM and MAM Concepts",
"Device Enrollment Methods",
"Windows Autopilot Fundamentals",
"Corporate Device Enrollment",
"BYOD Enrollment",
"Device Groups and User Groups"
];

const intuneSupport = [
"New Employee Laptop Onboarding",
"Device Enrollment Troubleshooting",
"User and Device Assignment",
"Intune Device Compliance Issues",
"Device Synchronization",
"Remote Device Actions",
"Password and PIN Reset Support",
"BitLocker Recovery Key Retrieval",
"Application Installation Issues",
"Company Portal Troubleshooting",
"Wi-Fi Profile Deployment",
"VPN Profile Deployment",
"Email Profile Configuration",
"Microsoft 365 Application Deployment",
"Device Configuration Profiles",
"Windows Update Troubleshooting",
"Device Retirement and Wipe",
"Lost or Stolen Device Management",
"Conditional Access Troubleshooting",
"Endpoint Security Policies",
"Compliance Policy Troubleshooting",
"Offboarding and Device Removal"
];

const intuneDevops = [
"Intune PowerShell Automation",
"Microsoft Graph API Fundamentals",
"Graph API Authentication",
"Automating User and Device Reports",
"Automating Group Assignments",
"PowerShell Scripts Deployment",
"Application Packaging and Deployment",
"Win32 Application Packaging",
"Application Detection Rules",
"Application Deployment Automation",
"Intune Configuration as Code Concepts",
"Git and Version Control for Scripts",
"CI/CD for PowerShell Scripts",
"Azure DevOps Pipelines for Automation",
"GitHub Actions for Endpoint Automation",
"Terraform and Microsoft Intune Concepts",
"Automated Compliance Reporting",
"Automated Device Inventory",
"Endpoint Management Automation",
"Automation Testing and Troubleshooting"
];

const intuneAdvanced = [
"Windows Autopilot Deployment Profiles",
"Enrollment Status Page",
"Configuration Profiles",
"Settings Catalog",
"Administrative Templates",
"Security Baselines",
"Endpoint Detection and Response",
"Microsoft Defender Integration",
"Attack Surface Reduction Rules",
"Application Protection Policies",
"Conditional Access Integration",
"Windows Update Rings",
"Feature Update Policies",
"Driver Update Management",
"Endpoint Privilege Management",
"Role-Based Access Control",
"Audit Logs and Monitoring",
"Intune Reports and Analytics",
"Device Compliance Reports",
"Disaster Recovery and Best Practices"
];

// RENDER TOPICS

function renderTopics(id, topics) {
    const container = document.getElementById(id);

    container.innerHTML = topics.map((topic,index) => `
        <div class="topic" onclick="toggleTopic(this)">
            <strong>${index + 1}. ${topic}</strong>
            <div class="topic-details">
                <p><b>Learning objective:</b> Understand ${topic}.</p>
                <p>Learn the concepts, understand the practical workflow,
                explore real-world scenarios, practice the process and
                troubleshoot common issues.</p>
                <p><b>Practice:</b> Create a hands-on lab or real-world
                scenario related to this topic.</p>
            </div>
        </div>
    `).join("");
}

renderTopics("awsTopics",aws);
renderTopics("azureTopics",azure);
renderTopics("supportTopics",support);
renderTopics("intuneBasic",intuneBasic);
renderTopics("intuneSupport",intuneSupport);
renderTopics("intuneDevops",intuneDevops);
renderTopics("intuneAdvanced",intuneAdvanced);

// SECTION NAVIGATION

function openSection(id) {
    document.getElementById("mainCards").style.display = "none";
    document.getElementById("review").style.display = "none";

    document.querySelectorAll(".section").forEach(section => {
        section.classList.remove("active");
    });

    document.getElementById(id).classList.add("active");
    window.scrollTo(0,0);
}

function goHome() {
    document.querySelectorAll(".section").forEach(section => {
        section.classList.remove("active");
    });

    document.getElementById("mainCards").style.display = "grid";
    document.getElementById("review").style.display = "block";
    window.scrollTo(0,0);
}

// TOPIC EXPANSION

function toggleTopic(element) {
    const details = element.querySelector(".topic-details");

    details.style.display =
        details.style.display === "block" ? "none" : "block";
}

// LANGUAGE SWITCHING

const translations = {
    en: {
        welcome: "Welcome to Navana Learning Skills!",
        description: "Choose your learning path and improve your technical knowledge with our step-by-step learning guides.",
        devops: "DevOps",
        support: "IT Support",
        intune: "Microsoft Intune"
    },
    ko: {
        welcome: "Navana Learning Skills에 오신 것을 환영합니다!",
        description: "학습 경로를 선택하고 단계별 가이드를 통해 기술 지식을 향상시키세요.",
        devops: "데브옵스",
        support: "IT 지원",
        intune: "마이크로소프트 인튠"
    },
    te: {
        welcome: "Navana Learning Skills కు స్వాగతం!",
        description: "మీ అభ్యాస మార్గాన్ని ఎంచుకుని, దశలవారీ మార్గదర్శకాలతో మీ సాంకేతిక పరిజ్ఞానాన్ని పెంచుకోండి.",
        devops: "డెవ్ఆప్స్",
        support: "ఐటీ సపోర్ట్",
        intune: "మైక్రోసాఫ్ట్ ఇంట్యూన్"
    }
};

function changeLanguage() {
    const lang = document.getElementById("language").value;
    const t = translations[lang];

    document.getElementById("welcomeTitle").innerText = t.welcome;
    document.getElementById("welcomeText").innerText = t.description;
    document.getElementById("devopsTitle").innerText = t.devops;
    document.getElementById("supportTitle").innerText = t.support;
    document.getElementById("intuneTitle").innerText = t.intune;
}

// STAR RATING

let selectedRating = 0;

function setRating(value) {
    selectedRating = value;

    document.querySelectorAll("#stars span").forEach((star,index) => {
        star.classList.toggle("selected",index < value);
    });

    document.getElementById("ratingText").innerText =
        "You selected " + value + " out of 5 stars.";
}

// REVIEW SUBMISSION

function submitReview() {
    const feedback = document.getElementById("feedback").value.trim();

    if(selectedRating === 0) {
        alert("Please select a star rating.");
        return;
    }

    if(feedback === "") {
        alert("Please enter your valuable feedback.");
        return;
    }

    document.getElementById("review").style.display = "none";
    document.getElementById("mainCards").style.display = "none";

    document.querySelectorAll(".section").forEach(section => {
        section.classList.remove("active");
    });

    document.getElementById("thankyou").style.display = "block";

    window.scrollTo(0,0);

    console.log("Rating:",selectedRating);
    console.log("Review:",feedback);
}

</script>

</body>
</html>
