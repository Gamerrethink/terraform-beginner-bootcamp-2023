# Week 2 - Connecting

1. **[Watched Week-2 Stream](https://www.youtube.com/watch?v=pWCejw1Mk50&list=PLBfufR7vyJJ4q5YCPl4o2XAzGRZUjuD-A&index=46&pp=iAQB)**

2. **[Watched the Week-2 Diagramming Video](https://www.youtube.com/watch?v=0qmT0aMX1WQ&list=PLBfufR7vyJJ4q5YCPl4o2XAzGRZUjuD-A&index=50&t=184s&pp=iAQB)**

3. I setup the mock web server by doing the following:
   
   - Cloning the repo from the following using the HTTPS option
     
   - Ran ```git clone git@github.com:ExamProCo/terratowns_mock_server.git```, which created a new directory named
     ```terratowns_mock_server```
   
   - After cd'ing inside the above directory, I removed the ```.git``` directory using the ```rm -rf .git``` command
     
   - Inside the ```terratowns_mock_server/gitpod.yml``` file, I cut all the content except ```tasks:``` and pasted it into the 
     top-level ```gitpod.yml``` file
     
   - Added cd terratowns_mock_server above ```bundle install``` and changed ```init``` to ```before``` in
     the top-level ```gitpod.yml``` file 
     ```
     - name: sinatra
      before: | 
      cd terratowns_mock_server
      bundle install
      bundle exec ruby server.rb 
     ```
     
4. I setup the skeleton for the custom TerraForm provider by doing the following:
   
   - Creating a directory named ```terraform-provider-terratowns```
     
   - Added content in the [```main.go```](https://github.com/Gamerrethink/terraform-beginner-bootcamp-2023/blob/main/terraform-provider-terratowns/main.go) file
     
   - Created a file named ```go.mod``` by cd'ing into the ```terraform-provider-terratowns``` directory and
     running the command ```go mod init terraform-provider-terratowns```. The aformentioned file should have 
     the following code shown below:
     ```
     module terraform-provider-terratowns

     go 1.21.1
     ```
     Which I replaced with the following code below:
 ```    
module github.com/ExamProCo/terraform-provider-terratowns

go 1.20

replace github.com/ExamProCo/terraform-provider-terratowns => /workspace/terraform-beginner-bootcamp-2023/terraform-provider-terratowns

require (
	github.com/google/uuid v1.3.0
	github.com/hashicorp/terraform-plugin-sdk/v2 v2.29.0
)

require (
	github.com/agext/levenshtein v1.2.2 // indirect
	github.com/apparentlymart/go-textseg/v15 v15.0.0 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/golang/protobuf v1.5.3 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/hashicorp/errwrap v1.0.0 // indirect
	github.com/hashicorp/go-cty v1.4.1-0.20200414143053-d3edf31b6320 // indirect
	github.com/hashicorp/go-hclog v1.5.0 // indirect
	github.com/hashicorp/go-multierror v1.1.1 // indirect
	github.com/hashicorp/go-plugin v1.5.1 // indirect
	github.com/hashicorp/go-uuid v1.0.3 // indirect
	github.com/hashicorp/go-version v1.6.0 // indirect
	github.com/hashicorp/hcl/v2 v2.18.0 // indirect
	github.com/hashicorp/logutils v1.0.0 // indirect
	github.com/hashicorp/terraform-plugin-go v0.19.0 // indirect
	github.com/hashicorp/terraform-plugin-log v0.9.0 // indirect
	github.com/hashicorp/terraform-registry-address v0.2.2 // indirect
	github.com/hashicorp/terraform-svchost v0.1.1 // indirect
	github.com/hashicorp/yamux v0.0.0-20181012175058-2f1d1f20f75d // indirect
	github.com/mattn/go-colorable v0.1.12 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/mitchellh/copystructure v1.2.0 // indirect
	github.com/mitchellh/go-testing-interface v1.14.1 // indirect
	github.com/mitchellh/go-wordwrap v1.0.0 // indirect
	github.com/mitchellh/mapstructure v1.5.0 // indirect
	github.com/mitchellh/reflectwalk v1.0.2 // indirect
	github.com/oklog/run v1.0.0 // indirect
	github.com/vmihailenco/msgpack v4.0.4+incompatible // indirect
	github.com/vmihailenco/msgpack/v5 v5.3.5 // indirect
	github.com/vmihailenco/tagparser/v2 v2.0.0 // indirect
	github.com/zclconf/go-cty v1.14.0 // indirect
	golang.org/x/net v0.13.0 // indirect
	golang.org/x/sys v0.12.0 // indirect
	golang.org/x/text v0.13.0 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20230525234030-28d5490b6b19 // indirect
	google.golang.org/grpc v1.57.0 // indirect
	google.golang.org/protobuf v1.31.0 // indirect
)
```
- Created the ```go.sum``` file and downloaded a set a files by running the ```go mod tidy``` command
  
- Created a named ```terraform-provider-terratowns_v1.0.0``` by running the ```go build -o terraform-provider-terratowns_v1.0.0``` command
  
- Added the ```terraform-provider-terratowns_v1.0.0``` binary to the ```.gitignore``` file to prevent it from being saved in the repo.
  
5. I setup the provider block for the custom TerraForm provider by doing the following:

   - Added ```TF_LOG: DEBUG``` to the ```gitpod.yml``` file alongside setting an enviornment variable
     for ```TF_LOG: DEBUG```
     
   - Commented out all contents of the top-level ```outputs.tf``` file
     
   - Ran ```tf init``` to check if ```TF_LOG: DEBUG``` is working
     
   - Installed a Go VSCode extension to color code the syntax

6. Made a bunch of updates to the ```go``` files and ran ```bin/build_provider``` and ```tf init``` for testing.

7. Implemented [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete)(which stands for Create, Read Update, and Delete) by making some updates to main.tf and terraform-provider-terratowns/main.go
   and running ```bin/build_provider``` afterward to test on the local Sinatra server.

8.

9.
