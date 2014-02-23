JAVA_HOME=/usr/local/java/jdk1.7.0_51
PATH=$PATH:$JAVA_HOME/bin
JRE_HOME=/usr/local/java/jre1.7.0_51
PATH=$PATH:$JRE_HOME/bin

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.7.0_51/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.7.0_51/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jre1.7.0_51/bin/javaws" 1

sudo update-alternatives --set java /usr/local/java/jre1.7.0_51/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk1.7.0_51/bin/javac
sudo update-alternatives --set javaws /usr/local/java/jre1.7.0_51/bin/javaws
