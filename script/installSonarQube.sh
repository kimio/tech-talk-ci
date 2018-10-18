# Documents
cd ~/Documents

# Install SonarQube
brew install wget
echo "----->>>Downloading SonarQube 6.7.5 and unzip"
wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-6.7.5.zip
unzip sonarqube-6.7.5.zip

echo "----->>>Update SonarQube configuration"
echo sonar.jdbc.url=jdbc:postgresql://localhost/postgres >> $HOME/Documents/sonarqube-6.7.5/conf/sonar.properties
echo sonar.jdbc.username=postgres >> $HOME/Documents/sonarqube-6.7.5/conf/sonar.properties
echo sonar.jdbc.password=123456 >> $HOME/Documents/sonarqube-6.7.5/conf/sonar.properties

echo "----->>>To Start SonarQube - sh \$HOME/Documents/sonarqube-6.7.5/bin/macosx-universal-64/sonar.sh start"
echo "----->>>To Stop SonarQube - sh \$HOME/Documents/sonarqube-6.7.5/bin/macosx-universal-64/sonar.sh stop"

# Openning
echo "----->>>To Open SonarQube use"
echo "open \"http://localhost:9000\""

# Install SonarQube Scanner
echo "----->>>Downloading Sonar Scanner and unzip"
wget https://github.com/SonarSource/sonar-scanner-cli/archive/3.2.0.1227.zip
unzip 3.2.0.1227.zip

echo "# SONAR-SCANNER" >> ~/.bash_profile
echo "export PATH=\"\$HOME/Documents/sonar-scanner-3.2.0.1227-macosx/bin:\$PATH\"" >> ~/.bash_profile
echo "export SONAR_SCANNER_OPTS=\"-Xmx512m\"" >> ~/.bash_profile

echo "----->>>Update bash profile"
echo "export PATH=\"\$HOME/Documents/sonar-scripts:\$PATH\"" >> ~/.bash_profile

mkdir "sonar-scripts"
cd sonar-scripts
wget https://raw.githubusercontent.com/kimio/tech-talk-ci/master/script/sonar-scripts/sonarStart.sh
wget https://raw.githubusercontent.com/kimio/tech-talk-ci/master/script/sonar-scripts/sonarStop.sh
wget https://raw.githubusercontent.com/kimio/tech-talk-ci/master/script/sonar-scripts/sonarRestart.sh

cd ~/Documents

# Download BigSql PostgreSQL
echo "----->>>Downloading BigSql PostgreSQL"
wget https://oscg-downloads.s3.amazonaws.com/packages/PostgreSQL-10.4-1-osx64-bigsql.dmg

# Opening PostgreSQL
echo "----->>>PostgreSQL - use password 123456"
open PostgreSQL-10.4-1-osx64-bigsql.dmg
