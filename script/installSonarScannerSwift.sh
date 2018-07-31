cd ~/Documents

echo "----->>>Clone xcpretty"
git clone https://github.com/Backelite/xcpretty.git
cd xcpretty
git checkout fix/duration_of_failed_tests_workaround
gem build xcpretty.gemspec
sudo gem install --both xcpretty-0.2.2.gem
cd ../

echo "----->>>Install Swiftlint"
brew install swiftlint

echo "----->>>Install Tailor"
brew install tailor

echo "----->>>Install Slather"
gem install slather

echo "----->>>Install pip"
brew install python@2
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
sudo -H pip install --ignore-installed matplotlib

echo "----->>>Install Lizard"
sudo pip install lizard

echo "----->>>Downloading Sonar Swift Plugin"
wget https://github.com/Backelite/sonar-swift/releases/download/0.3.7/backelite-sonar-swift-plugin-0.3.7.jar

echo "----->>>Move to plugin folder"
mv backelite-sonar-swift-plugin-0.3.7.jar sonarqube-7.2.1/extensions/plugins

echo "----->>>Create Sonar script folder"
mkdir "sonar-scripts"
cd sonar-scripts

echo "----->>>Download Swift Sonar Script"
wget https://raw.githubusercontent.com/Backelite/sonar-swift/master/sonar-swift-plugin/src/main/shell/run-sonar-swift.sh

echo "----->>>Update bash profile"
echo "export PATH=\"\$HOME/Documents/sonar-scripts:\$PATH\"" >> ~/.bash_profile

echo "Use sh run-sonar-swift.sh to run sonar-swift"