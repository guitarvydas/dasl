componentConnections(Component,Connections) :-
    bagof(ConnID,connection(ConnID,Component),Connections).

allConnections :-
    bagof([Comp,Conn],componentConnections(Comp,Conn),B),format("~w~n",[B]).
