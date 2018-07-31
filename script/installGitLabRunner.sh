# https://docs.gitlab.com/runner/install/osx.html

echo "Download Binary"
sudo curl --output /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-darwin-amd64

echo "Set Permission"
sudo chmod +x /usr/local/bin/gitlab-runner

echo "Register GitLab Runner"
gitlab-runner register

echo "After register run"
echo "cd ~"
echo "gitlab-runner install"
echo "gitlab-runner start"