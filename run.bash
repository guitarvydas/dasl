#!/bin/bash
../grasem/run.bash components.grasem >_components.js
node _components.js <test.components.dasl
../grasem/run.bash connections.grasem >_connections.js
cat foreign.js _connections.js > _temp.js
node _temp.js <test.connections.dasl

# ../grasem/run.bash components.grasem >_components.js
# node _components.js <intersects..components.dasl
# ../grasem/run.bash connections.grasem >_connections.js
# cat foreign.js _connections.js > _temp.js
# node _temp.js <intersects.connections.dasl
# # ../grasem/run.bash signatures.grasem >_signatures.js
# # node _signatures.js <intersects.signatures.dasl

