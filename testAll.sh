#! /bin/bash
#patches yaml using groovy
groovy patchGroovyJson.groovy
#patches yaml using jsonpatch. yaml will be converted to json as am intermediate format
./patchJson.sh
#patches yaml using jsonpatch and envsubst. Variables in jsonpatch will be replaced by env vars. yaml will be converted to json as am intermediate format
./patchJsonEnvSubst.sh
#patches yaml using yq and hardcoded paths and values
./patchSimple.sh

./patchYaml.sh