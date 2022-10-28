#!/bin/bash

# need to use
# /var/lib/myfrdcsa/codebases/minor/fcms/FCMS/begin-ai2-websockets.sh
# for *FCMS* in order to get EFA to work

# examples/executive-function-adapter/src/java
# examples/executive-function-adapter/src/asl

cd /var/lib/myfrdcsa/collaborative/git/Peleus/examples/executive-function-adapter && ./build.sh
cd /var/lib/myfrdcsa/collaborative/git/Peleus && ./frdcsa-cli.sh examples/executive-function-adapter/ExecutiveFunction.mas2j
