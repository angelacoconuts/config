**Run on a new EC2 instance**
=========

```sh
cd ~
sudo apt-get install -y git-core
git clone https://github.com/angelacoconuts/config.git
./config/setup.sh

wget https://raw.github.com/angelacoconuts/config/master/setup_java.sh
chmod 764 setup_java.sh
./setup_java.sh
```
