---
title: "Coder Infrastructure and Deployment" # MODIFY THIS TITLE IF APPLICABLE
chapter: true
weight: 30
---

# Coder Infrastructure and Deployment

Welcome to the Coder Infrastructure and Deployment section! This section of the workshop will deploy the Coder CDE control plane and supporting AWS infrastructre to enable Coder CDE Workspaces to be dynmically created from sumpporting Templates defined using Terraform infrstuctrure as code (IaC):

Here is a preview of what we will be setting up:

<ol>
    <li>AWS EKS Cluster with supporting VPC/Subnets, Nodegroup, Storage</li>
    <li>PostgreSQL DB Service, for Coder Persistence Resources</li>
    <li>Coder CDE Control Plane and supporting Network Load Balancer/Ingress</li>
    <li>IAM Role and EKS Service Account Association for AWS ECS Workspaces</li>
    <li>AWS Cloudfront Deployment for Coder Workspace TLS</li>
</ol>

{{% notice warning %}}
The examples and sample code provided in this workshop are intended to be consumed as instructional content. These will help you understand how various AWS services can be architected to build a solution while demonstrating best practices along the way. These examples are not intended for use in production environments.
{{% /notice %}}

### Next Section Heading <!-- MODIFY THIS HEADING -->
This paragraph block can optionally be utilized to lead into the next section of the workshop.

