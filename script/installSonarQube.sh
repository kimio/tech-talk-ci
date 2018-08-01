# Documents
cd ~/Documents

# Install SonarQube
brew install wget
echo "----->>>Downloading SonarQube 7.2.1 and unzip"
wget https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-7.2.1.zip
unzip sonarqube-7.2.1.zip

echo "----->>>Update SonarQube configuration"
echo sonar.jdbc.url=jdbc:postgresql://localhost/postgres >> $HOME/Documents/sonarqube-7.2.1/conf/sonar.properties
echo sonar.jdbc.username=postgres >> $HOME/Documents/sonarqube-7.2.1/conf/sonar.properties
echo sonar.jdbc.password=123456 >> $HOME/Documents/sonarqube-7.2.1/conf/sonar.properties

echo "----->>>To Start SonarQube - sh sonarqube-7.2.1/bin/macosx-universal-64/sonar.sh start"
echo "----->>>To Stop SonarQube - sh sonarqube-7.2.1/bin/macosx-universal-64/sonar.sh stop"

# Openning
echo "----->>>To Open SonarQube use"
echo "open \"http://localhost:9000\""

# Install SonarQube Scanner
echo "----->>>Downloading Sonar Scanner and unzip"
wget https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-3.2.0.1227-macosx.zip
unzip sonar-scanner-cli-3.2.0.1227-macosx.zip

echo "# SONAR-SCANNER" >> ~/.bash_profile
echo "export PATH=\"\$HOME/Documents/sonar-scanner-3.2.0.1227-macosx/bin:\$PATH\"" >> ~/.bash_profile
echo "export SONAR_SCANNER_OPTS=\"-Xmx512m\"" >> ~/.bash_profile

echo "----->>>Update bash profile"
echo "export PATH=\"\$HOME/Documents/sonar-scripts:\$PATH\"" >> ~/.bash_profile

mkdir "sonar-scripts"
#move sonar-scripts

# Download BigSql PostgreSQL
echo "----->>>Downloading BigSql PostgreSQL"
wget https://oscg-downloads.s3.amazonaws.com/packages/PostgreSQL-10.4-1-osx64-bigsql.dmg

# Opening PostgreSQL
echo "----->>>PostgreSQL - use password 123456"
open PostgreSQL-10.4-1-osx64-bigsql.dmg
