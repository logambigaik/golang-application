# golang-application

# Pre-Requisites
    Install GoLang
    Install Docker
# Install GoLang
    yum install java-1.8.0-openjdk -y
    yum install golang -y
# Install Docker
    yum install docker -y
    service docker start

# Manual process1:
    go run helloworld.go
# Open port 3000 in security group and check output of applicaiton in UI
  http://54.162.12.189:3000/
    ![image](https://user-images.githubusercontent.com/58024415/104742193-28f48800-5770-11eb-90f8-d7bb5dedd424.png)
# Manual process2: (Build binary)
    go build helloworld.go
  Run the binary using below command
    
    ./helloworld
# Open port 3000 in security group and check output of applicaiton in UI
  http://54.162.12.189:3000/
    ![image](https://user-images.githubusercontent.com/58024415/104742193-28f48800-5770-11eb-90f8-d7bb5dedd424.png)

# Deploy appliation with docker container
  Build docker image
    
    docker build -t helloworld:latest .
  Tag image to docker repository
  
    docker tag helloworld:latest naresh240/helloworld:latest
  push image to docker container
  
    docker login
    docker push naresh240/helloworld:latest
# Deploy application with in container
    docker run --name helloworld-container -p 3000:3000 -d naresh240/helloworld:latest
# Open port 3000 in security group and check output of applicaiton in UI
  http://54.162.12.189:3000/
    ![image](https://user-images.githubusercontent.com/58024415/104742193-28f48800-5770-11eb-90f8-d7bb5dedd424.png)
