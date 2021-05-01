#!/bin/bash
echo >_.pl
../grasem/run.bash components.grasem >_components.js
node _components.js <test.components.dasl >> _.pl
../grasem/run.bash connections.grasem >_connections.js
cat foreign.js _connections.js > _temp.js
node _temp.js <test.connections.dasl >> _.pl
sort _.pl > intersects.pl
swipl -g 'consult(intersects).' \
      -g 'consult(queries).' \
      -g 'bagof(C,connection(C,"main"),Connections),format("connections for main ~w\n",[Connections]).' \
      -g 'bagof(R,receiver(R,id3),ReceiversOfID3),format("receivers for id3 ~w\n",[ReceiversOfID3]).' \
      -g 'allConnections.' \
      -g 'halt'.

# ../grasem/run.bash components.grasem >_components.js
# node _components.js <intersects..components.dasl
# ../grasem/run.bash connections.grasem >_connections.js
# cat foreign.js _connections.js > _temp.js
# node _temp.js <intersects.connections.dasl
# # ../grasem/run.bash signatures.grasem >_signatures.js
# # node _signatures.js <intersects.signatures.dasl

