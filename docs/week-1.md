# Week 1 - Building

1. [Watched Week 1 Live Stream]()

2. Restructured the root module by setting up the ```tf``` files in the [```modules/terrahouse_aws```](https://github.com/Gamerrethink/terraform-beginner-bootcamp-2023/tree/main/modules) folder. 

   Also, I set some enviornmental variables at TF Cloud, which were:

   - AWS access key
   - AWS secret access key
   - AWS region
   - user UUID

3. Experimented with the ```terraform import``` command and configuration drift by fixing missing resources.

4. Created a Terraform Module in gitpod and updated the ```variables.tf``` file in ```modules/terrahouse_aws```
   and the non ```modules/terrahouse_aws``` ```variables.tf``` file to include said module.

5. Experimented with Static Website Hosting by creating the ```public``` folder alongside creating the ```index.html``` and
   ```error.html``` files which I uploaded to my S3 Bucket using the ```tf plan``` and ```tf apply``` commands.

6. Implemented CDN Functionality via gitpod by 
   setting up the CloudFront distribution, origin access controls and bucket policy.

7. Added in functionality via gitpod that changes the ```index.html``` file when the content version's been set.
   
8. Added in functionality that triggers a CloudFront invalidation when the content version is changed.

9. Implemented an asset upload using ```for_each``` loops via gitpod alongside creating the ```assets``` folder and
   putting two images - one jpg and one png - inside said folder.
