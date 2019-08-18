## Project Overview

This is a udacity capstone project that will use
cloudformnation to deploy a AWS infrastructure and a single noide kubernetes cluster with kubeadm. It will also create a kubernetes deployment and service that will serve out a webpage.

A Jenkins pipeline will 
1. download the source code from github
2. lint the index.htnl file
3. create a docker image with the updated index.html file
4. upload the image to a dcoker repository
5. deploy the new imnage to the kubernetes deployment whih uses a rolling uodate


---

## File descriptions

* create infrastructure (cloudformatin file to create VPC,subnets and internet gateways)
    1. udacity_infra.yml
    2. infra_parameters.json

* create Single node Kubernetes Cluster on AWS
  1. udacity_servers.yml
  2. server_parameters.json
  
* create Kubernetes deployment and service
  1. udacity_deployment.yaml
  2. capstone_svc.yaml

*  Jenkins Pipeline
    1. Jenkinsfile


