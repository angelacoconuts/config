JAVA_HOME=/usr/local/java/jdk1.7.0_45
PATH=$PATH:$JAVA_HOME/bin
JRE_HOME=/usr/local/java/jre1.7.0_45
PATH=$PATH:$JRE_HOME/bin

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jre1.7.0_45/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk1.7.0_45/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/local/java/jre1.7.0_45/bin/javaws" 1

sudo update-alternatives --set java /usr/local/java/jre1.7.0_45/bin/java
sudo update-alternatives --set javac /usr/local/java/jdk1.7.0_45/bin/javac
sudo update-alternatives --set javaws /usr/local/java/jre1.7.0_45/bin/javaws
