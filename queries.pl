allDefined(All) :-
  setof(Defined,component(Defined,nil),All).

isComponent(C) :-
    component(C,nil).

isComponent(C) :-
    contained(C,_).

allComponents(Set) :-
    setof(C,isComponent(C),Set).

undefined(C) :-
    contained(C,_),
    \+ component(C,nil).

allUndefined(All) :-
    setof(C,undefined(C),All).

sigUndef(C,S) :-
    undefined(C),
    signature(C,S).

sig(C,S) :-
    component(C,nil),
    signature(C,S).

sig(C,S) :-
    contained(C,_),
    signature(C,S).

dcMissingSig(C) :-
    component(C,nil),
    \+ signature(C,_).
dcMissingSig(C) :-
    contained(C,_),
    \+ signature(C,_).

dcAllMissingSig(All) :-
    setof(C,dcMissingSig(C),All).


