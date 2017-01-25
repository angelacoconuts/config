cd /home/ubuntu

#wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/jdk-8u121-linux-x64.tar.gz
wget --no-check-certificate --no-cookies -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jdk-8u121-linux-x64.tar.gz
#wget --no-check-certificate --no-cookies - --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/jre-8u121-linux-x64.tar.gz
wget --no-check-certificate --no-cookies -c --header "Cookie: oraclelicense=accept-securebackup-cookie" http://download.oracle.com/otn-pub/java/jdk/8u121-b13/e9e7ea248e2c4826b92b3f075a80e441/jre-8u121-linux-x64.tar.gz

tar xvf jdk-8u121-linux-x64.tar.gz
tar xvf jre-8u121-linux-x64.tar.gz

export JAVA_HOME=/home/ubuntu/jdk1.8.0_121
export PATH=$PATH:$JAVA_HOME/bin
export JRE_HOME=/home/ubuntu/jre1.8.0_121
export PATH=$PATH:$JRE_HOME/bin

sudo update-alternatives --install "/usr/bin/java" "java" "/home/ubuntu/jre1.8.0_121/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/home/ubuntu/jdk1.8.0_121/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/home/ubuntu/jre1.8.0_121/bin/javaws" 1

sudo update-alternatives --set java /home/ubuntu/jre1.8.0_121/bin/java
sudo update-alternatives --set javac /home/ubuntu/jdk1.8.0_121/bin/javac
sudo update-alternatives --set javaws /home/ubuntu/jre1.8.0_121/bin/javaws
