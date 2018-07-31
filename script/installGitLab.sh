# Running compose
echo "----->>>Run Docker Compose"
docker-compose up -d

# Running gitlab
echo "----->>>Execute GitLab"
docker exec -i -t gitlab /bin/bash

# Openning gitlab
echo "----->>>Use "
echo "open \"http://localhost:8050\""
echo "----->>>To open gitlab"