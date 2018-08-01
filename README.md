# Tech Talk - CI #
The script idea is help to install some CI Tools on MacOs

Open the terminal
```
cd script
```
and Just Fun :)

## 1 - Install Homebrew ##
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

## 2 - Install Docker ##
You have two options to install Docker, using homebrew or install application

*Docker Homebrew version*
```
sh installDockerBrew.sh
```

*Docker Application*
```
sh installDocker.sh
```

## 3 - Install GitLab ##
Look, we need to install Docker because GitLab run outside MacOs

```
sh installGitLab.sh
```

## 4 - Install Jenkins ##
```
sh installJenkins.sh
```

## 5 - Install SonarQube and Sonar Scanner ##
```
sh installSonarQube.sh
```

## 6 - Install Plugin Sonar Swift ##
To run sonar-swift:
1 - open the swift project folder,
2 - create sonar-project.properties
3 - run 

to more information:
https://docs.sonarqube.org/display/SCAN/Analyzing+Source+Code

```
sh installSonarSwift.sh
```

# TIPS #

### If you only want to test, use ngrok \o/ ###
https://ngrok.com

## How to open Jenkins ##
```
jenkinsStart
```
Open the adress http://localhost:8080 or create a tunnel using ngrok
https://ngrok.com/product

## How to open GitLab ##
Start Docker
Open the adress http://localhost:8050

## How to use Sonar Qube##

To Start
```
sh sonarStart.sh
```

To Stop
```
sh sonarStop.sh
```

To Restart
```
sh sonarRestart.sh
```

Open the adress http://localhost:9000

Maybe you have swift project, then open the folder swift project that contains sonar-project.properties and run sonar-swift

```
cd <SWIFT-PROJECT FOLDER>
sh run-sonar-swift.sh

```