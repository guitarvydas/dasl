#!/bin/bash
echo >_.pl
../grasem/run.bash components.grasem >_components.js
node _components.js <intersects.components.dasl >> _.pl
# # ../grasem/run.bash signatures.grasem >_signatures.js
# # node _signatures.js <intersects.signatures.dasl
../grasem/run.bash connections.grasem >_connections.js
cat foreign.js _connections.js > _temp.js
node _temp.js <intersects.connections.dasl >> _.pl
sort _.pl > fb.pl
