# Week 0 - Project Prep

1. [Watched Week 0 live stream](https://www.youtube.com/watch?v=TXjzwiHtGqc)


2. **Terraform CLI install fix** 

Fixed an issue with the Terraform CLI not fully installing automatically 
by refactoring the Terraform CLI install into an external bash script.


3. **Project root env vars**

Set enviornment variables for the project root alongside creating the ```.env.example``` file to document 
environmental variables.


4. **AWS CLI install**

Fixed an issue with the AWS CLI installation in gitpod by creating an AWS CLI bash script. I also set AWS related enviornment variables.


5. **Terraform - Random Provider Init, Plan, Apply**

I installed the Terraform random provider module alongside adding the following code to the main.tf file:

```
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
  }
}

provider "random" {
  # Configuration options
}
```
Also ran the commands ```terraform init```, ```terraform plan``` and ```terraform apply --auto--approve``` respectivley to generate a random bucket name.


6. **Creating a simple S3 bucket**

Created an S3 bucket using Terraform commands alongside updating main.tf with the following below:

```
terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.5.1"
    }
    aws = {
      source = "hashicorp/aws"
      version = "5.16.2"
    }
  }
}
```
```
# https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string
resource "random_string" "bucket_name" {
  lower = true
  upper = false
  length   = 32
  special  = false
}
```
```
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "example" {
  # Bucket Naming Rules
  #https://docs.aws.amazon.com/AmazonS3/latest/userguide/bucketnamingrules.html?icmpid=docs_amazons3_console
  bucket = random_string.bucket_name.result
}
```


7. **Configuring Terraform Cloud backend**

Configured the Terraform Cloud backend by creating a CLI workspace in Terraform Cloud, then added the following code
to main.tf which ressembled the example code below:

```
terraform {
  cloud {
    organization = "<your org here>"

    workspaces {
      name = "<your name here>"
    }
  }
  # existing content here if applicable
}
```

Also ran Terraform login and created a token after going to the URL next to "Document" 
as shown in the screenshot below:

![terraformlogingitpod](https://github.com/Gamerrethink/terraform-beginner-bootcamp-2023/assets/20970865/b8eb77d8-cbce-4df0-9f9a-f8871fbd9cd1)

Also created and opened /home/gitpod/.terraform.d/credentials.tfrc.json via these commands: 
touch /home/gitpod/.terraform.d/credentials.tfrc.json and open /home/gitpod/.terraform.d/credentials.tfrc.json,
respecivley.

I then added the token to the aformentioned file with the following code below:

```
{
    "credentials":{
        "app.terraform.io":{
            "token": "<your token here>"
        }
    }
}
```


8. **Creating a Terraform bash script**

Created a TF bash script by generating an API token at Terraform Cloud.

Also created ```/bin/generate_tfrc_credentials``` and set the enviorment variables for "TERRAFORM_CLOUD_TOKEN" 
for the API token.


9. **Creating a Terraform alias**

Created a TF alias by appending ```alias tf="terraform"``` to the ~/.bash_profile file alongside creating
the bin/set_tf_alias bash script and running ```tf```.

10. [Watched the Week 0 Security Considerations video.](https://www.youtube.com/watch?v=BIVsDKwqlEM&t=1s)
