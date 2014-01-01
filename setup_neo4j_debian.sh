cd ~
wget -O - http://debian.neo4j.org/neotechnology.gpg.key >> key.pgp
sudo apt-key add key.pgp
echo 'deb http://debian.neo4j.org/repo stable/' | sudo tee -a /etc/apt/sources.list.d/neo4j.list > /dev/null
sudo apt-get update
sudo apt-get install neo4j
