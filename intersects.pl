

    
component("main", nil).
connection(id0, "main").
connection(id3, "main").
inside("main #", "main").
pairComponent(id1, ".").
pairComponent(id2, "1").
pairComponent(id4, "3").
pairComponent(id5, "7").
pairComponent(id6, "7").
pairPort(id1, "R1").
pairPort(id2, "R").
pairPort(id4, "x").
pairPort(id5, "x1").
pairPort(id6, "x2").
receiver(id2, id0).
receiver(id5, id3).
receiver(id6, id3).
sender(id1, id0).
sender(id4, id3).
undefinedcontains("main", "main #").
