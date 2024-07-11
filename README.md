# terrafrom_demo
To run the terraform code
First you need to create a access key and secret key in aws and add the values in terraform.tfvars file

Create one key pair in aws and replace the keypair name in terraform.tfvars file

Go to the terraformdemo/demo folder and excuete the terraform commands to deploy the resources in aws

terraform init

terraform plan

terraform apply ---- it will prompt for yes or no you should give yes and press enter for deployment

After sometime resources will be deployed in aws

verify the resources are deployd or not and delete the resources using below command

terraform destroy

##Docker

to create a docker image

go to terraform_demo/simple-docker-image folder and excuete docker commands

docker built -t test .

to check the image created 

docker images

to delete the docker image

docker rmi <image_id>or<image_name>

to create the container

docker run -d -p 80:80 <image_id>or<image_name>

to stop the container

docker stop <container_id>or<container_name>

to delete the container

docker rm <container_id>or<container_name>


to go inside the running container

docker exec -it <container_id>or<container_name> /bin/bash

type exit to exit from the container