#!/bin/bash

# export JAVA_HOME=
# export JDK_HOME=
# export JAVA=
# export CLASSPATH=
# export JASON_HOME=


# export JAVA_HOME=/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64
# export JDK_HOME=/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64
# export JAVA=/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64/bin/java
# export CLASSPATH=/usr/lib/jvm/adoptopenjdk-16-hotspot-jre-amd64/lib
# export JASON_HOME=/var/lib/myfrdcsa/sandbox/jason-20211129/jason-20211129/build

# gradle run --args="examples/Peleus.mas2j"
/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64/bin/java -cp ./lib/peleus.jar:./lib/jemplan.jar:./lib/jason.jar jason.infra.centralised.RunCentralisedMAS examples/Peleus.mas2j -debug
