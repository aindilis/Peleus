#!/bin/bash

# export CLASSPATH="$CLASSPATH:/usr/lib/swi-prolog/lib/jpl.jar:/var/lib/myfrdcsa/collaborative/git/jason/build/libs/jason-3.0.jar"
export CLASSPATH="$CLASSPATH:/usr/lib/swi-prolog/lib/jpl.jar:/var/lib/myfrdcsa/collaborative/git/Peleus/lib/peleus.jar:/var/lib/myfrdcsa/collaborative/git/Peleus/lib/jemplan.jar:/var/lib/myfrdcsa/collaborative/git/Peleus/lib/jason.jar"

javac src/java/prolog/swi.java
javac src/java/ExecutiveFunctionAdapterEnv.java

jar cfm src/java/ExecutiveFunctionAdapterEnv.jar src/java/Manifest.txt src/java/*.class
