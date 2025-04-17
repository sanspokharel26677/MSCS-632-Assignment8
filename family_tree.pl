/*
  Family Tree Program in Prolog
  -----------------------------

  This Prolog program defines a basic family tree using facts and rules.
  It includes:
    - Basic relationships: parent, male, female
    - Derived relationships: grandparent, sibling, cousin
    - Recursive rules: descendant
    - Sample queries can be used to infer relationships

  This program is written for the Advanced Programming Languages assignment.

  Author: Sandesh Pokharel
*/

% -------------------
% Basic Relationships
% -------------------

% parent(Parent, Child)
parent(john, mary).
parent(john, mike).
parent(susan, mary).
parent(susan, mike).

parent(mary, alice).
parent(mary, tom).
parent(robert, alice).
parent(robert, tom).

parent(mike, elena).
parent(sophia, elena).

% male(Person)
male(john).
male(mike).
male(robert).
male(tom).

% female(Person)
female(susan).
female(mary).
female(alice).
female(sophia).
female(elena).

% ------------------------
% Derived Relationships
% ------------------------

% grandparent(Grandparent, Grandchild)
% X is a grandparent of Y if X is a parent of someone who is a parent of Y
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% sibling(X, Y)
% X and Y are siblings if they share the same parent (and are not the same person)
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% cousin(X, Y)
% X and Y are cousins if their parents are siblings
cousin(X, Y) :-
    parent(P1, X),
    parent(P2, Y),
    sibling(P1, P2).

% descendant(Descendant, Ancestor)
% A person is a descendant of someone if:
% - They are their child, or
% - They are a descendant of their child (recursive)
descendant(X, Y) :-
    parent(Y, X).

descendant(X, Y) :-
    parent(Y, Z),
    descendant(X, Z).
