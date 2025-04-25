# AWS Infrastructure Capstone Project

I am using my local machine to build this Capstone project.

My local machine already has AWS Cli and Terraform installed.
I have used tfswitch to change into different versions of Terraform, Terraform v1.11.4.

I have already provisione Golden AMI image from Packer which I installed at the start of the class. Hence, I am using the existing AMI image.

Most of my work is refrenced to our class work so there are a lot of similarities in the codes.

Also, I did created EC2 using AWS console where I installed Packer and Terraform however when I was working in Vscode it was easier to spin up EC2 instance using autoscaling group. Later, I terminated EC2 instance from the console and continued working on the autoscaling group.

Prerequites 

Step 1: Generate Access Key and Secret Key.
* Log into AWS account -> Iam users search intended user name.
* Under security credentials select access keys then create access key.
* Under access key best practices, choose CLI/ others. 
* Next provide a descritpion for your key name and done.
* Download the csv file and keep it safe either in secrets server or password manager.

Step 2: Install Packer in your machine either in your local machine or via consle by creating a new EC2 instance making sure it is t2.micro. 

Install Packer in the machine using this link from Hashicorp.com
https://developer.hashicorp.com/packer/tutorials/aws-get-started/get-started-install-cli 

Build a Golden AMI for your EC2 instance
https://developer.hashicorp.com/packer/tutorials/aws-get-started/aws-get-started-build-image


Step 3: Install Terraform in your machine or in the instance.

Install Terraform
https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli 


Step 4: Installing AWS CLI so that your local machine can communicate with AWS account. 

AWS CLI 
https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html 

Step 5: Github account is connected to your project work.


Building Infrastrutue

1. Under website folder there are 2 folder: components and modules.

2. Modules have: 
    a. autoscaling-group : main.tf, provider.tf and variables.tf
    b. load-balancer: main.tf, output.tf, provider.tf and variables.tf
    c. sec-groups: main.tf, output.tf, provider.tf and variables.tf
    d. vpc: main.tf, output.tf, provider.tf and variables.tf

3. Components -> website-server
    a. autoscaling-group.tf
    b. datasource.tf
    c. loadbalancer.tf
    d. securitygroups.tf
    e. variables.tf
    f. vpc.tf

4. EC2 has been spun up using these compnents along with existing Packer AMI image. 

References

Autoscaling group
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_attachment

VPC
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc

Route tables
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table

Target groups
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group



Website

1. For cap-bucket folder, I following files
    a. bucket.tf
    b. error.html
    c. index.html
    d. main.tf
    e. outputs.tf
    f. provider.tf

2. Html files are just random ai generated so may not be accurate, I kept on getting errors when I tried to make it pubicly accessable. So, the website is privately accessable. 

References

S3 buckets
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket


