<TeXmacs|1.99.5>

<style|generic>

<\body>
  <doc-data|<doc-title|There are infinitely many primes>|<doc-date|<date|>>>

  <new-theorem|signature|Signature> <new-theorem|axiom|Axiom>
  <new-theorem|signaturep|Signature> <new-theorem|axiomp|Axiom>
  <new-theorem|definitionp|Definition> <new-theorem|theoremp|Theorem>
  <new-theorem|lemmap|Lemma>

  <assign|power|<macro|<with|math-font|cal|P>>>

  <assign|preimg|<macro|1|2|<arg|1><rsup|-1>[<arg|2>]>>

  <assign|Seq|<macro|1|2|{<arg|1>,\<ldots\>,<arg|2>}>>

  <assign|Set|<macro|1|2|3|{<arg|1><rsub|<arg|2>>,\<ldots\>,<arg|1><rsub|<arg|3>>}>>

  <assign|Product|<macro|1|2|3|<big|prod><rsub|i=<arg|2>><rsup|<arg|3>><arg|1><rsub|i>>>

  <assign|subfunc|<macro|1|2|<arg|1><rsub|<arg|2>>>>

  <assign|CC|<macro|<with|math-font|Bbb*|C>>>

  <assign|RR|<macro|<with|math-font|Bbb*|R>>>

  <assign|QQ|<macro|<with|math-font|Bbb*|Q>>>

  <assign|ZZ|<macro|<with|math-font|Bbb*|Z>>>

  <assign|NN|<macro|<with|math-font|Bbb*|N>>>

  <assign|NNplus|<macro|<with|math-font|Bbb*|N><rsup|+>>>

  \ 

  <section|Suggestions:>

  Ad hoc extensions to SAD, to be used as proof of concept for a subsequent
  project of extensive structural changes and extensions to the ForTheL
  language.

  Work with the established top level sections of SAD. Complement the
  official form with some abbreviated forms. Try to keep the sentence
  structure close to the official form, so that the changes to the SAD code
  are only superficial.\ 

  E.g. \PWork with X\Q can be derived from the official \PSignature. X is a
  notion.\Q \ by replacing \PSignature.\Q by \PWork with\Q and \Pis a
  notion\Q by \P \Q. Or a listing of axiom can be carried out by sentences of
  the form \P - the_commutativity_of_addition: <math|m+n=n+m>\Q instead of
  \PAxiom the_commutativity_of_addition. <math|m+n=n+m>.\Q again by replacing
  \ \PAxiom\Q by \P-\Q and the first \P.\Q by \P:\Q.

  These changes have to be be carried out so that the function of each
  sentence is uniquely identifiable by human readers and by the system.

  Later, the controlled language ForTheL is to be turned into a controlled
  language with grammatical correctness requirements and a rich spectrum of
  common mathematical phrases.

  Examples:

  <strong|Signature extensions>: Signature. Let ... . Let ... . X is a
  notion.

  One sentence version: (We) (also) Work with X. Fix the relation ... . The
  constant X is a number ... . We require that an element is a ... . The term
  <math|f<around*|(|x|)>> is a set. The <em|domain> is ... (Here, the
  introduction is signaled by <em|italics>.

  Short version with premises: Given (that) ... fix the
  relation/constant/term.

  <strong|Axiom>: Axiom. Let ... . Let ... . Statement.

  One sentence version: (We) presuppose that Statement.

  Short version with premises: For ... postulate that .... .

  List of axioms: \P - the_commutativity_of_addition: <math|m+n=n+m>\Q, see
  above.

  <strong|Definitions>: Definition. Let ... . Let ... . Statement.

  One sentence version: (We) define .... .

  Short version with premises: Define, for ..., t=... . Define, for ..., ...
  .

  List of definitions: \P .....

  <strong|Claims>:

  \PNote that .... .\Q anstelle von \PWe have ....\Q

  \PObviously/Trivially ...\Q (To be used when no proof is given)

  ...

  <strong|Induction.> SAD handles inductions with a inbuilt special relation,
  which nevertheless has to be invoked by a signature extension:

  Signature IH. m -\<less\>- n is an atom. Axiom IH. m \<less\> n =\<gtr\> m
  -\<less\>- n.

  These commands could be be invoked instead by something like: \PWe can
  carry out inductions on the relation <math|\<less\> >.\Q

  In the case of natural numbers, the Axiom IH is a version of the induction
  axiom (schema) of first-order Peano arithmetic.

  <section|I. Foundations>

  We work with <em|sets>. Let <math|A,X,Y,Z> denote sets. We also work with
  <em|elements>. Let <math|x,y,z> denote elements. We require that an
  <em|element> of <math|X> is an element. Let <math|x> <em|belongs to>
  <math|X> stand for <math|x> is an element of <math|X>. Let <math|x> <em|is
  in ><math|X> stand for <math|x> is an element of <math|X>. Let
  <math|x\<in\>X> stand for <math|x> is an element of <math|X>. The constant
  <math|\<emptyset\>> is a set that has no elements. <math|X> is <em|empty>
  stands for <math|X=\<emptyset\>>. <math|X> is <em|nonempty> stands for
  <math|X\<neq\>\<emptyset\> >. Define a <em|subset> of <math|Y> as a set
  such that every element of <math|X> belongs to <math|Y>.
  <math|X\<subseteq\>Y> stands for <math|X> is a subset of <math|Y>.

  We can show that (a) <math|X\<subseteq\>X> (reflexivity). (b)
  <math|X\<subseteq\>Y\<subseteq\>Z \<rightarrow\> X\<subseteq\>Z>
  (transitivity). (c) \ <math|X\<subseteq\>Y\<subseteq\>X \<rightarrow\> X=Y>
  (symmetry).

  We also work with functions. Let <math|f,g,h> denote functions. The
  <em|domain> of <math|f> is a set. Given <math|x\<in\>dom f>, the term
  <math|f<around*|(|x|)>> is an element. Let <math|f<rsub|x>> stand for
  <math|f<around*|(|x|)>>. Define for <math|X\<subseteq\>dom f> the term
  <math|f<around*|[|X|]>=<around*|{|f<around*|(|x|)>
  <around*|\|||\<nobracket\>> x\<in\>X|}>>. Let <math|ran f> stand for
  <math|f<around*|[|dom f|]>>. Let the <em|range> of <math|f> also stand for
  <math|f<around*|[|dom f|]>>. A function <em|from> <math|X> denotes a
  function <math|f> such that <math|dom f=X>. A function <em|from> <math|X>
  <em|to> <math|Y> denotes a function <math|f> such that <math|dom f=X> and
  <math|ran f\<subseteq\>Y >. <math|f:X> means that <math|f> is a function
  from <math|X>. <math|f:X\<rightarrow\>Y> means that <math|f> is a function
  from <math|X> to <math|Y>.

  Note that if <math|x\<in\>dom f> then <math|f<around*|(|x|)>\<in\>ran f>.

  Define for <math|X\<subseteq\>dom f> the term <math|f\<upharpoonright\>X>
  to be a function <math|g> from <math|X> such that
  <math|g<around*|(|x|)>=f<around*|(|x|)>> for every <math|x\<in\>X >.

  We work with <em|numbers>. Let <math|i,j,k,l,m,n,q,r> denote numbers.
  Define <math|\<bbb-N\>> to be the set of numbers. The constant <math|0> is
  a number. Let <math|x> is <em|nonzero> stand for <math|x\<neq\>0 >. The
  constant <math|1> is a nonzero number. The term <math|m+n> is a number. Let
  the <em|sum> of <math|m> and <math|n> stand for <math|m+n>. The term
  <math|m\<cdot\>n> is a number. Let the <em|sum> of <math|m> and <math|n>
  stand for <math|m\<cdot\>n>. We assume the following axioms.

  <\itemize-minus>
    <item>the associativity of addition: <math|<around*|(|m+n|)>+l=m+<around*|(|n+l|)>>;

    <item>the neutrality of 0: <math|m+0=0+m=m>;

    <item>the commutativity of addition: <math|m+n=n+m>;

    <item>the associativity of multiplication:
    <math|<around*|(|m\<cdot\>n|)>\<cdot\>l=m\<cdot\><around*|(|n\<cdot\>l|)>>;

    <item>the neutrality of 1: <math|m\<cdot\>1=1\<cdot\>m=m>;

    <item><math|m\<cdot\>0=0=0\<cdot\>m>;

    <item>the commutativity of multiplication: <math|m\<cdot\>n=n\<cdot\>m>;

    <item>distributivity: <math|m\<cdot\><around*|(|n+l|)>=<around*|(|m\<cdot\>n|)>+<around*|(|m\<cdot\>l|)>>,
    and <math|<around*|(|n+l|)>\<cdot\>m=<around*|(|n\<cdot\>m|)>+<around*|(|l\<cdot\>m|)>>;

    <item>additive cancellation: <math|>if <math|l+m=l+n> or <math|m+l=n+l>
    then <math|m=n>;

    <item>multiplicative cancellation: Assume that <math|l> is nonzero. Then
    <math|l+m=l+n> or <math|m+l=n+l> implies <math|m=n>;

    <item>if <math|m+n=0> then <math|m=0> and <math|n=0>.
  </itemize-minus>

  We can show that if <math|m\<cdot\>n=0> then <math|m=0> or <math|n=0>.

  Define <math|m\<leq\>n> iff there exists <math|l> such that <math|m+l=n>.
  Define for <math|m\<leq\>n> the expression <math|n-m> to be a number such
  that <math|m+l=n>. Let <math|m\<less\>n> stand for <math|m\<neq\>n> and
  <math|m\<leq\>n >.

  Obviously, <math|m\<leqslant\>m >; <math|m\<leqslant\>n\<leqslant\>l
  \<rightarrow\>m\<leq\>l >; and <math|m\<leq\>n\<leq\>m \<rightarrow\> m=n
  >. Furthermore, <math|m\<leq\>n> or <math|n\<less\>m>; for
  <math|l\<less\>n> we have <math|m+l\<less\>m+n> and <math|l+m\<less\>n+m >;
  and for <math|m> nonzero and <math|l\<less\>n> we have
  <math|m\<cdot\>l\<less\>m\<cdot\>n> and <math|l\<cdot\>m\<less\>n\<cdot\>m
  >. We presuppose that for every number <math|n> we have <math|n=0> or
  <math|n=1> or <math|1\<less\>n>. We can prove that <math|m\<neq\>0> implies
  <math|n\<leqslant\>n\<cdot\>m >. Indeed observe that <math|1\<leqslant\>m
  >.

  We can carry out inductions on the relation <math|\<less\> >.

  Define <math|<around*|{|m,\<ldots\>,n|}>=<around*|{|i\<in\>\<bbb-N\>
  <around*|\|||\<nobracket\>> m\<leq\>i\<leq\>n|}>>. For a function <math|f>
  such that <math|<around*|{|m,\<ldots\>,n|}>\<subseteq\>dom f> let
  <math|<around*|{|f<rsub|m>,\<ldots\>,f<rsub|n>|}>=<around*|{|f<around*|(|i|)>
  <around*|\|| m\<leq\>i\<leq\>n|\<nobracket\>>|}>>. We say that <math|f>
  <em|lists> <math|X> <em|in> <math|n> <em|steps> iff <math|dom
  f=<around*|{|1,\<ldots\>,n|}>> and <math|X=<around*|{|f<rsub|m>,\<ldots\>,f<rsub|n>|}>>.
  <math|X> is called <em|finite> iff there is a function <math|f> and a
  number <math|n> such that <math|f> lists <math|X> in <math|n> steps.
  <math|X> is called <em|infinite> iff <math|X> is not finite.

  \ 

  <section|II. Prime Numbers>

  <subsection|1. Divisibility>

  We define that <math|m> <em|divides> <math|n >,
  <math|m<around*|\||n|\<nobracket\>> >, \ iff for some \ <math|l>
  <math|n=m\<cdot\>l>. A <em|divisor> of <math|n> is defined as a number that
  divides <math|n >. For <math|m> nonzero and
  <math|m<around*|\|||\<nobracket\>>n >, <math|<frac|n|m>> is defined as a
  number <math|l> such that <math|n=m\<cdot\>l >. \ 

  Obviously, <math|l<around|\||m|\|>*n\<rightarrow\>l\|n> (transitivity of
  divisibility); and if <math|l\|m> and <math|l\|n> then <math|l\|m+n >.
  Indeed if <math|l> is nonzero then <math|m+n=l\<cdot\><around|(|<frac|m|l>+<frac|n|l>|)>>.

  <\lemma>
    DivMin. Let <math|l\|m> and <math|l\|m+n>. Then <math|l\|n>.
  </lemma>

  <\proof>
    Assume that <math|l,n> are nonzero. Take <math|i> such that
    <math|m=l\<cdot\>i>. Take <math|j> such that <math|m+n=l\<cdot\>j>.

    Let us show that <math|i\<leq\>j>. Assume the contrary. Then
    <math|j\<less\>i>. <math|m+n=l\<cdot\>j\<less\>l\<cdot\>i=m>.
    <math|m\<leq\>m+n>. <math|m=m+n>. <math|n=0>. Contradiction.

    Take <math|k=j-i>. We have <math|<around|(|l\<cdot\>i|)>+<around|(|l\<cdot\>k|)>=<around|(|l\<cdot\>i|)>+n>.
    Hence <math|n=l\<cdot\>k>.
  </proof>

  We can show: if <math|m\|n\<neq\>0>, then <math|m\<leq\>n>.

  <\lemma>
    DivAsso. Let <math|l> be nonzero and divide <math|m>. Then
    <math|n\<cdot\><frac|m|l>=<frac|n\<cdot\>m|l>>.
  </lemma>

  <\proof>
    <math|<around|(|l\<cdot\>n|)>\<cdot\><frac|m|l>=l\<cdot\><frac|n\<cdot\>m|l>>.
  </proof>

  Define <math|\<bbb-N\><rsup|+>=<around*|{|n\<in\>\<bbb-N\>
  <around*|\|||\<nobracket\>> n\<neq\>0|}>>.\ 

  For <math|f:<around*|{|m,\<ldots\>,n|}>\<rightarrow\>\<bbb-N\><rsup|+>>
  consider <math|<Product|f|m|n>> which is an element of
  <math|\<bbb-N\><rsup|+>>. We presuppose that for
  <math|f:<Seq|m|n>-\<gtr\><NNplus>> and <math|m\<leq\>j\<leq\>n >,
  <math|<subfunc|f|j>> divides <math|<Product|f|m|n>>.

  <subsection|2. Primes>

  Let <math|m> is <em|trivial> stand for <math|m=0> or <math|m=1>. Let
  <math|m> is <em|nontrivial> stand for <math|m\<neq\>0> and
  <math|m\<neq\>1>. We call a number <math|q> <em|prime> iff <math|q> is
  nontrivial and for every divisor <math|m> of <math|q> we have <math|m=1> or
  <math|m=q>. We say that <math|m> is <em|compound> for <math|m> is not
  prime.

  <\lemma>
    PrimDiv. Every nontrivial <math|k> has a prime divisor.
  </lemma>

  <with|font-series|bold|Proof> by induction on <math|k>. Let <math|k> be
  nontrivial. Case <math|k> is prime. Obvious. Case <math|k> is compound.
  Take a divisor <math|m> of <math|k> such that <math|m\<neq\>1> and
  <math|m\<neq\>k>. <math|m\<neq\>0>. <math|m> is nontrivial and
  <math|m\<precprec\>k>. Take a prime divisor <math|n> of <math|m>. <math|n>
  is a prime divisor of <math|k>. end. qed.

  <new-page*>

  <\theoremp>
    The set of prime numbers is infinite.
  </theoremp>

  <\proof>
    Let <math|A> be a finite set of prime numbers. Take a function <math|p>
    and a number <math|r> such that <math|p> lists <math|A> in <math|r>
    steps. <math|<text|ran>p\<subseteq\><NNplus>>.
    <math|<Product|p|1|r>\<neq\>0>. Take <math|n=<Product|p|1|r>+1>. <math|n>
    is nontrivial. Take a prime divisor <math|q> of <math|n>.

    Let us show that <math|q> is not an element of <math|A>. Assume the
    contrary. Take <math|i> such that (<math|1\<leq\>i\<leq\>r> and
    <math|q=<subfunc|p|i>>). <math|<subfunc|p|i>> divides
    <math|<Product|p|1|r>> (by MultProd). Then <math|q> divides <math|1> (by
    DivMin). Contradiction. qed.

    Hence <math|A> is not the set of prime numbers.
  </proof>
</body>

<\initial>
  <\collection>
    <associate|font-base-size|24>
    <associate|page-orientation|landscape>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|2>>
    <associate|auto-2|<tuple|2|5>>
    <associate|auto-3|<tuple|3|8>>
    <associate|auto-4|<tuple|3.1|8>>
    <associate|auto-5|<tuple|3.2|9>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Suggestions:>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>I.
      Foundations> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2><vspace|0.5fn>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|3<space|2spc>II.
      Prime Numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3><vspace|0.5fn>

      <with|par-left|<quote|1tab>|3.1<space|2spc>1. Divisibility
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|3.2<space|2spc>2. Primes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>
    </associate>
  </collection>
</auxiliary>