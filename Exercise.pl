parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,pat).
parent(bob,ann).
parent(pat,jim).
female(pam).
female(liz).
female(pat).
female(ann).
male(jim).
male(bob).
male(tom).

grandson(X,Y):-parent(Y,Z),parent(Z,X),male(X),female(Y);male(Y).
aunt(A,B):-sister(A,C),parent(C,B),female(A).
grandfather(Q,T):-parent(Q,H),parent(H,T),male(Q).
grandmother(W,U):-parent(W,E),parent(E,U),female(W).
uncle(R,J):-brother(R,O),parent(O,J),male(R).
brother(I,M):-parent(D,I),parent(D,M),male(I).

