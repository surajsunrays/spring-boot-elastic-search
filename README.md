# spring-boot-elastic-search
Simple demo example for spring-boot with elastic search example.

### How to Run this application
#### 1. Step ONE
Create docker network with the subnet
``` docker network create test-net --subnet=172.31.0.0/16```
#### 2. Start the elasticsearch container
To package the application start the elasticsearch docker container with the custom network<br>
``` docker run -it --name elasticsearch --net test-net --ip=172.31.0.10 -p 9200:9200 -p 9300:9300 elasticsearch:2.4.0```
Can can attach -d tag to run this container in a detach mode<br>

#### 3. Package the Application using maven
use / run following command from terminal or from your IDE<br>
``` mvn clean package```
Image will be build as <b>sunrays86/springboot-springdata-elasticsearch-example-1.0:1.0</b>, while 1.0 is the default tag and project current version, replace this in docker-compose.yml for current image tag.<br>

#### 4. Clean the resource to run it using docker-compose or using docker swarm mode
``` docker network rm test-net```<br><br>
will remove the network resources.<br><br>
``` docker container stop elasticsearch```<br><br>
will stop the elasticsearch docker container.<br><br>
``` docker container rm elasticsearch```<br><br>
will releases the elasticsearch container resources.<br><br>
<b>OR</b><br><br>
You may use this command also<br><br>
``` docker container prune ```<br><br>

#### 4. Run it using docker-compose
Simply use <br><br>
``` docker-compose up```<br><br>
use -d at the end to run it in detach mode<br><br>

#### 5. Run it in docker swarm mode
Use<br><br>
```docker stack deploy -c docker-compose.yml app```<br>
<br>
### How to test this app
Navigate to the web-browser or use <a href="https://www.getpostman.com/"> postman </a>, Use following URL<br><br>
```http://localhost:9200/mkyong/books/_search```<br><br>
Will Display all the Available records in elastic search.<br><br>
<b>-------------------------------------------- END -------------------------------------------------------</b>
