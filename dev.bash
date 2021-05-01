#!/bin/bash
echo >_.pl
../grasem/run.bash components.grasem >_components.js
node _components.js <test.components.dasl >> _.pl
# sort _.pl > fb.pl # debug
# cat fb.pl # debug
../grasem/run.bash connections.grasem >_connections.js
cat foreign.js _connections.js > _temp.js
node _temp.js <test.connections.dasl >> _.pl
sort _.pl > fb.pl


# swipl -g 'consult(fb).' \
#       -g 'consult(queries).' \
#       -g 'bagof(C,connection(C,"main"),Connections),format("connections for main ~w\n",[Connections]).' \
#       -g 'bagof(R,receiver(R,id3),ReceiversOfID3),format("receivers for id3 ~w\n",[ReceiversOfID3]).' \
#       -g 'allConnections.' \
#       -g 'halt'.
