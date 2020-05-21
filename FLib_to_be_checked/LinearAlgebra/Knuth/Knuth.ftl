# This is a ForTheL version of some example text
# for a CNL for Lean by Tom Hales

# Preliminaries on Sets (Types)

[synonym type/-s]
Signature. A type is a set.
Let A,B,C stand for a set.
Let T stand for a type.
Let a : t stand for a is an element of t.
Let a \in t stand for a is an element of t.

Let x \neq y stand for x != y.

Signature. The empty set is a set that has no elements.
Let \emptyset stand for the empty set.

Definition. A subset of B is a set A such
that every element of A is an element of B. 
Let A \subseteq B stand for A is a subset of B.
Let A is contained in B stand for A is a subset of B.
Let B contains A stand for A is a subset of B.


# Preliminaries on Natural Numbers

[synonym number/numbers]
Signature. A natural number is a notion.
Definition. \NN is the set of natural numbers.
let i,j,k,l,m denote natural numbers.

Signature. 0 is a natural number.
Signature. 1 is a natural number.

Signature. k + l is a natural number.
Signature. k * l is a natural number.
# Axiom. k + l = l + k.

Axiom. k -<- k + 1.
Axiom. If k \neq 0 then there is l such that k = l + 1.

Axiom. k + 0 = k.
# Axiom. 0 + k = k.
Axiom. 0 * l = 0.
Axiom. (k + 1) * l = (k * l) + l. 

Signature. k \leq l is an atom.
Axiom. k \leq k.
Axiom. If i \leq j \leq k then i \leq k.
Axiom. If not l \leq m then m +1 \leq l.
Axiom. If i \leq j and k \leq l then i + k \leq j + l.
Axiom. If i \leq j and k \leq l then i * k \leq j * l.

Axiom Archimedean_Property. Assume that for every k \in \NN
i + (k * l) \leq j + (k * m). Then l \leq m.

#Preliminaries on Functions and Sequences

Axiom Functional_Extensionality. Let f,g be functions 
such that Dom(f) = Dom(g).
If f[i] = g[i] for all i \in Dom(f) then f = g.

Definition. A sequence of length l is a function a such that 
Dom(a) = {i \in \NN | 1 \leq i \leq l}.

Definition. \NN^{l} = {a | a is a sequence of length l such that 
a[i] \in \NN for all i \in Dom(a)}.

# Fix a dimension or length:
Signature. n is a natural number.
Let a,b,c,p denote elements of \NN^{n}.

Signature. a ++ b is a sequence of length n
such that (a ++ b)[i] = a[i] + b[i] 
for all i \in Dom(a).

Signature. 0^{n} is a sequence of length n such that
0^{n}[i] = 0 for all i \in Dom(0^{n}).

Lemma. c ++ 0^{n} is a sequence of length n
and c = c ++ (0^{n}).
Proof. For all i \in Dom(c) 
c[i] = (c ++ 0^{n})[i]. 
Dom(c) = Dom(c ++ 0^{n}).
qed.

Signature. k ** a is a sequence of length n such that
(k ** a)[i] = k * a[i] for all i \in Dom(a).

Lemma. (l + 1) ** p = (l ** p) ++ p.
Proof. (l ** p) ++ p \in \NN^{n}. 
Let us show that for all elements i of Dom(p) we have 
((l + 1) ** p)[i] = ((l ** p) ++ p)[i].
end.
qed.

# Preliminaries on Special Subsets of \NN^{n}

Signature. A submonoid is a subset Q of \NN^{n} such that
0^{n} \in Q and a ++ b \in Q for all a,b \in Q.

Lemma. Let Q be a submonoid and p \in Q. 
Then for all natural numbers k k ** p \in Q.
Proof by induction.
Let k be a natural number.
(1) Case k = 0. Then k ** p = 0^{n} \in Q. end.
(2) Case k \neq 0. Take l such that k = l + 1. l -<- k and
l ** p \in Q.
Then k ** p = (l + 1) ** p = (l ** p) ++ p \in Q.
end.
qed.

Definition. A(n) = {a \in \NN^{n} | for all i,j (if 1 \leq i \leq j \ leq n
                                    then a[i] \leq a[j])}.

Signature. Let P \subseteq \NN^{n}. The submonoid generated by P is
a submonoid Q such that P is contained in Q and
Q is contained in every submonoid that contains P.
Let P^{*} stand for the submonoid generated by P.

Definition. Let A,B \subseteq \NN^{n}.
A +++ B = {a ++ b | a \in A and b \in B}.

# Knuth's(?) Lemma

Lemma 2. Let P,C \subseteq \NN^{n}. Let C \neq \emptyset and 
C +++ (P^{*}) \subseteq A(n).
Then we have C,P \subseteq A(n).
Proof. We have C \subseteq A(n). Indeed for all c \in C

          c = c ++ 0^{n} \in (C +++ (P^{*})) \subseteq A(n).

Let us show that P \subseteq A(n). 
Let p \in P.
Let i,j be natural numbers such that 1 \leq i \leq j \leq n.
Take c \in C. For all k \in \NN we have
c ++ (k ** p) \in C +++ (P^{*}) \subseteq A(n) and 
c[i] + (k * p[i]) \leq c[j] + (k * p[j]).
p[i] \leq p[j]. # Using the  Archimedean_Property.
end.
qed.