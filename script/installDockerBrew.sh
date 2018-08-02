echo "----->>>Install all dependencies"
brew cask install virtualbox
brew install docker docker-compose docker-machine xhyve docker-machine-driver-xhyve

echo "----->>>Update Permissions and Owner"
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

echo "----->>>Create default"
docker-machine create default --driver xhyve --xhyve-experimental-nfs-share

echo "----->>>Set Default"
eval $(docker-machine env default)