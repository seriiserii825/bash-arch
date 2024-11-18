sudo systemctl start docker.service
systemctl status docker.service
sudo docker version
sudo usermod -aG docker $USER
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version
sudo chmod 666 /var/run/docker.sock
sudo usermod -aG docker serii
sudo chmod 666 /var/run/docker.sock
newgrp docker
