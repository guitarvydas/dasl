#!/bin/bash
set -e
#target=test
target=intersects
echo >_.pl
../grasem/run.bash components.grasem >_components.js
node _components.js < $target.components.dasl >> _.pl

../grasem/run.bash signatures.grasem >_signatures.js
node _signatures.js < $target.signatures.dasl >> _.pl

../grasem/run.bash connections.grasem >_connections.js
cat foreign.js _connections.js > _temp.js
node _temp.js < $target.connections.dasl >> _.pl

sort _.pl > fb.pl
cat fb.pl
