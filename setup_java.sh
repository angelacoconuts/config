cd /home/ubuntu

wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jdk-7u51-linux-x64.tar.gz
wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/7u51-b13/jre-7u51-linux-x64.tar.gz

tar xvf jdk-7u51-linux-x64.tar.gz
tar xvf jre-7u51-linux-x64.tar.gz

export JAVA_HOME=/home/ubuntu/jdk1.7.0_51
export PATH=$PATH:$JAVA_HOME/bin
export JRE_HOME=/home/ubuntu/jre1.7.0_51
export PATH=$PATH:$JRE_HOME/bin

sudo update-alternatives --install "/usr/bin/java" "java" "/home/ubuntu/jre1.7.0_51/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/home/ubuntu/jdk1.7.0_51/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/home/ubuntu/jre1.7.0_51/bin/javaws" 1

sudo update-alternatives --set java /home/ubuntu/jre1.7.0_51/bin/java
sudo update-alternatives --set javac /home/ubuntu/jdk1.7.0_51/bin/javac
sudo update-alternatives --set javaws /home/ubuntu/jre1.7.0_51/bin/javaws
