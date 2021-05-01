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

