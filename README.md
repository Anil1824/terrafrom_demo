# Terraform Usage Guide

## Pre-requisites

Before running the Terraform code, ensure you have completed the following steps:

1. **AWS Credentials**: Create an access key and secret key in AWS IAM. Add these values in the `terraform.tfvars` file.

2. **Key Pair**: Create a key pair in AWS EC2. Replace the key pair name in the `terraform.tfvars` file.

## Deployment Steps

1. **Initialize Terraform:**

- Navigate to the `terraformdemo/demo` folder and initialize Terraform.
   ```bash
   cd terraformdemo/demo
   terraform init
2. Plan Terraform Deployment:

- Run Terraform plan to preview the changes.

   ```bash
   terraform plan
3. Apply Terraform Changes:

- Apply the Terraform configuration. During this process, you'll be prompted to confirm the deployment.

    ```bash
    terraform apply

- Type yes and press Enter to proceed with the deployment.

- After some time, Terraform will deploy the specified resources in AWS.

4. Verify Deployment:

- Verify that the resources have been deployed successfully in AWS.

5. Destroy Resources (Optional):

     If you want to delete the deployed resources, use the following
   command:
      ```bash
      terraform destroy

- This command will remove all resources created by Terraform.

Note: Be cautious when running terraform destroy as it will delete all resources managed by Terraform.

## Docker Usage Guide

### Creating a Docker Image

To create a Docker image:

1. Navigate to the `terraform_demo/simple-docker-image` folder.
2. Execute the following Docker build command:

   ```bash
   docker build -t test .

### Managing Docker Images

1. To check the list of Docker images:

   ```bash
   docker images

2. To delete a Docker image:

   ```bash
   docker rmi <image_id_or_name>

### Creating and Managing Docker Containers

1. To create a Docker container from the image:

   ```bash
   docker run -d -p 80:80 <image_id_or_name>

2. To stop a running Docker container:

   ```bash
   docker stop <container_id_or_name>

3. To delete a Docker container:

   ```bash
   docker rm <container_id_or_name>


### Accessing a Running Container

1. To access a shell inside a running container:

   ```bash
   docker exec -it <container_id_or_name> /bin/bash

2. To exit from container's shell, type:

   ```bash
   exit

### Summary

- These commands enable you to efficiently manage Docker images and containers, from creation to deletion, and to access and interact with containers as needed.