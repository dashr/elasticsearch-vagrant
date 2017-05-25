sudo apt-get update

# Install python tools
sudo apt-get install build-essential autoconf flex bison libtool python-dev -y

# Install direct elasticsearch repo
sudo apt-get install htop openjdk-8-jre -y
wget -qO - https://packages.elasticsearch.org/GPG-KEY-elasticsearch | sudo apt-key add -
echo "deb https://packages.elastic.co/elasticsearch/2.x/debian stable main" | sudo tee -a /etc/apt/sources.list.d/elasticsearch-2.x.list


# Commands mostly taken from
# https://www.elastic.co/guide/en/elasticsearch/reference/2.3/setup-repositories.html
sudo sudo apt-get update & apt-get install elasticsearch -y
sudo sed -i 's/#START_DAEMON/START_DAEMON/' /etc/default/elasticsearch
sudo echo "network.bind_host: 0" >> /etc/elasticsearch/elasticsearch.yml
sudo echo "network.host: 0.0.0.0" >> /etc/elasticsearch/elasticsearch.yml
sudo update-rc.d elasticsearch defaults
sudo systemctl restart elasticsearch
