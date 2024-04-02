# Terraform Deploy S3+Lambda+API Gateway on AWS with Jenkins

In this project I Deployed S3 Bucket and Lambda API function on AWS using Terraform and Jenkins declarative pipeline.

## Please make sure you have

* Account in AWS.
* Jenkins with Git and Terraform plugins, and terraform binary tool installed.

## Custom your variables file
Go to ```terraform.tfvars``` file.

You must change the ```accessKey``` and the ```secretKey``` values. These values are your credentials to your AWS account.
Make sure the rest of the values match your needs.

## Create and run the pipeline
1. Login to your Jenkins server.
2. Create a pipeline.
3. In the pipeline section choose Pipeline script from scm -> git and add the repository url. Script path is Jenkinsfile and disable the Lightweight checkout Make sure the branch is main (not master)(no credentials if the project is public).
4. Save and run the pipeline manually.

### Good Luck!!👍

### Rachel Fabian