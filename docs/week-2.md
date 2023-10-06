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
4. I setup the skeleton for a custom TerraForm provider by doing the following:
   
   - Creating a directory named ```terraform-provider-terratowns```
   - Added content in the [```main.go```]() file
   - Created a file named ```go.mod``` by cd'ing into the ```terraform-provider-terratowns``` directory and
     running the command ```go mod init terraform-provider-terratowns```. The aformentioned file should have 
     the following code shown below:
     ```
     module terraform-provider-terratowns

     go 1.21.1
     ```
5.

6.

7.

8.

9.
