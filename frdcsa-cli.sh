#!/bin/bash

export JAVA_HOME=/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64
export JDK_HOME=/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64
export JAVA=/usr/lib/jvm/adoptopenjdk-16-hotspot-amd64/bin/java
export CLASSPATH=/var/lib/myfrdcsa/collaborative/git/Peleus/examples/executive-function-adapter/src/java/ExecutiveFunctionAdapterEnv
export LD_LIBRARY_PATH=/usr/lib/swi-prolog/lib:/usr/lib/swi-prolog/lib/x86_64-linux:$LD_LIBRARY_PATH
export LD_PRELOAD=$LD_PRELOAD:/usr/lib/libswipl.so

export JASON_HOME=/var/lib/myfrdcsa/collaborative/git/Peleus

./scripts/jason-setup
./scripts/jason $1
