An ubuntu 16.04 vagrant box running Elasticsearch 2.x.

# Usage

    $>vagrant up

to start (and deploy if needed) Elasticsearch in the Vagrant box. A Vagrant box will startup Elasticsearch at localhost:9200.

    $>vagrant halt

to halt the box

# Configuration

Modify Vagrantfile to your hearts content to control RAM/CPU allocation, IP address, etc.


# Test Usage


  $ curl -X GET 'http://33.33.33.1:9200'
