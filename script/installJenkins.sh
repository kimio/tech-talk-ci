# Update java
echo "----->>>Install Java 8"
brew cask install homebrew/cask-versions/java8

# Install Jenkins
echo "----->>>Install Jenkins"
brew update && brew install jenkins

# Update bash profile
echo "----->>>Update bash profile"
echo "export PATH=\"/usr/local/bin/:\$PATH\"" >> ~/.bash_profile
echo "# JENKINS" >> ~/.bash_profile
echo "jenkinsStart=/usr/local/bin/jenkins" >> ~/.bash_profile