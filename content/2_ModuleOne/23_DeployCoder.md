---
title: "Deploy Coder Control Plane" 
chapter: true
weight: 33 
---

# Deploy Coder Control Plane 

## Configure and Create Coder Containerized Control Plane  

The containerized version of Coder Control Plane can be deployed to Kubernetes/EKS via Helm.  As part of this workshop, we will be updating the supplied values.yaml file used by the Coder Helm chart to initially deploy Coder and later update the Coder Control Plane configuration.

From the AWS Cloudshell and in the AWS account/region being used for the workshop, perform the following steps:

#### Step 1: Install Coder
Find the latest stable release from the [Coder Releases Page](https://github.com/coder/coder/releases)
```bash
# Add Coder Helm repository
helm repo add coder-v2 https://helm.coder.com/v2

# Install Coder using the provided values file
# Make sure the provided coder-core-values-v2.yaml file is in your current directory
helm install coder coder-v2/coder \
    --namespace coder \
    --values coder-core-values-v2.yaml \
    --version <Latest Stable Release>
```

#### Step 2: Update Coder Configuration
After several minutes the full Coder deployment will have completed in AWS, and when the supporting Ingress/NLB is available, update the Coder Access and Wildcard Access URLs:
```bash
# Obtain the Coder Service Loadbalancer Ingress endpoint:
kubectl describe service coder -n coder | grep LoadBalancer

# Update the coder-core-values-v2.yaml file with your specific endpoint configuration:
# - Update CODER_ACCESS_URL with your actual domain or load balancer URL
# - Update CODER_WILDCARD_ACCESS_URL with your wildcard load balancer URL

# Apply the updated configuration
helm upgrade coder coder-v2/coder \
    --namespace coder \
    --values coder-core-values-v2.yaml \
    --version <Latest Stable Release>
```

Tip:  Check the state of the coder-<instance> pod created in the coder namespace to ensure it's running, and pod logs to ensure it deployed successfully.  Common trouble-shooting issues arise around PostgreSQL DB connectivity.  Start by validating that the required kubernetes secret has the correct values, and the coder-db-postgresql pod is running. 

### Next Section Heading <!-- MODIFY THIS HEADING -->
This paragraph block can optionally be utilized to lead into the next section of the workshop.