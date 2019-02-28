# spring-boot-elastic-search
Simple demo example for spring-boot with elastic search example.

### How to Run this application
#### 1. Step ONE
Create docker network with the subnet
``` docker network create test-net --subnet=172.31.0.0/16```
#### 2. Start the elasticsearch container
To package the application start the elasticsearch docker container with the custom network
``` docker run -it --name elasticsearch --net test-net --ip=172.31.0.10 -p 9200:9200 -p 9300:9300 elasticsearch:2.4.0```
Can can attach -d tag to run this container in a detach mode

#### 3. Package the Application using maven
use / run following command from terminal or from your IDE
``` mvn clean package```
Image will be build as <b>sunrays86/springboot-springdata-elasticsearch-example-1.0:1.0</b>, while 1.0 is the default tag and project current version, replace this in docker-compose.yml for current image tag.

#### 4. Clean the resource to run it using docker-compose or using docker swarm mode
``` docker network rm test-net```
will remove the network resources.
``` docker container stop elasticsearch```
will stop the elasticsearch docker container.
``` docker container rm elasticsearch```
will releases the elasticsearch container resources.
<b>OR</b>
You may use this command also
``` docker container prune ```

#### 4. Run it using docker-compose
Simply use 
``` docker-compose up```
use -d at the end to run it in detach mode

#### 5. Run it in docker swarm mode
Use
```docker stack deploy -c docker-compose.yml app```

### How to test this app
Navigate to the web-browser or use postman, Use following URL
```http://localhost:9200/mkyong/books/_search```
Will Display all the Available records in elastic search.
<b>-------------------------------------------- END -------------------------------------------------------</b>
