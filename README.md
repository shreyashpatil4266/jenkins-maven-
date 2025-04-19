# Jenkins Maven Example Project

This is a basic Java project built with Maven and integrated with Jenkins for continuous integration.

## 🛠 Project Structure

hello-maven-jenkins/ ├── pom.xml └── src/ └── main/ └── java/ └── HelloWorld.java


## 📦 Build with Maven

Make sure you have Maven installed. maually or you can install automatcally in the jenkins

``
mvn clean package


First create directory then add the java file adn pom.xml 
mkdir hello-maven-jenkins
cd hello-maven-jenkins

for javafile
mkdir -p src/main/java

then add java file vim src/main/java/HelloWorld.java
  then pom.xml vim pom.xml


then run docker docker run -p 8080:8080 -p 50000:50000 --name jenkins jenkins/jenkins:lts

and locally http://localhost:8080/ go to jenkins and setup  -----docker start jenkins  if its stops

in jenkins 
manage jenkins----global tools configuration---scrooll down---add maven and save


go to dashboard 
new item----freeporject---name---then if you have add the content to git then source management add git and url ---if not then skip ---- save ---build now




**proof
![Screenshot 2025-04-19 200446](https://github.com/user-attachments/assets/304308f5-6b52-4445-b06c-3f458bf936a4)























