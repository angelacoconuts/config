cd ~
wget https://github.com/angelacoconuts/config/blob/master/neo4j-community-2.0.0-unix.tar.gz

sudo tar -xvzf neo4j-community-2.0.0-unix.tar.gz
sudo mv -f neo4j-community-2.0.0 neo4j

sudo ./neo4j/bin/neo4j-installer install
