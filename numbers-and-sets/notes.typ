#import "@local/course:0.1.0": *
#lecture(title: [Numbers and Sets], date: datetime(day: 31, month: 8, year: 2025))[
  #set heading(numbering: "1.")
  #outline()
  // #set enum(numbering: "1.")

  = Proofs

  A proof is a sequence of true statements without logical gaps, to establish a conclusion.

  We have to start somewhere and have agreed assumptions i.e. 'axioms'.

  Why do we even prove?
  + We want to know for certain a statement is true.
  + We want to gain insight into why they are true.
  + We might be lucky and find a 'beautiful' proof.

  #example-box[Statements][
    + There are infinitely many primes $p$ s.t. $2p+1$ is also prime.
    + There are infinitely many primes $p$ s.t. one of $p+2, p+4, ..., p+240$ is prime.
    + For any $n in ZZ^+$ there is a prime between $n$ and $2n$
    + There is no computer algorithm which will factor an $n$-digit number in less than $n^3$ steps.
    + Every non-constant polynomial with complex coefficients has a root in $CC$
    + $forall m,n in ZZ" "m n=n m$
    + $1+1=2$
  ]
  #remark-box[
    + No-one knows if it is true
    + Was proved in Aug 2026
    + Not obvious but true
    + Would be a disaster if true
    + The fundamental theorem of algebra
    + Worth thinking about
    + Does it need proving?
  ]

  == Some proofs and non-proofs
  #proposition-box[$forall n in ZZ^+, space 3 | n^3-n$ ]
  #proof[#strike[Proof]][
    Observe that $forall n in ZZ^+$, $n^3-n = n(n^2-1)=(n+1)n(n-1)$.

    Now observe that one of $n-1$, $n$, $n+1$ must be a multiple of 3. Hence $n^3-n$ must be a multiple of 3.
  ]

  Now for a non-proof
  #proposition[$forall n in ZZ^+$ if $n^2$ is even then so is $n$ ] <prop:x1>
  #proof[Given a positive integer $n in ZZ^+$ then $exists k in ZZ^+ space s.t. space n = 2k$

  So $n^2 = (2k)^2 = 4k^2= 2(2k^2)$ and so $n^2$ is even. ]
  Clearly this is not a proof of @prop:x1 as clearly we wanted to prove 'if $A$ then $B$' but instead we proved 'if $B$ then $A$' and so @prop:x1 has not been proved.

  #proposition[$forall n in ZZ^+$ if $n^2$ is a multiple of $9$ then so is $n$ ] <prop:x2>
  To show @prop:x2 is false it is enough to show that 1 value does not satisfy the proposition. i.e. $n=3$ is a counterexample to the proposition and so @prop:x2 is false

  Now back to
  #theorion-restate(filter: <prop:x1>)

  #proof[Proof][Let's suppose the contrary to @prop:x1

  i.e. $exists n in ZZ^2 space s.t. space n$ is odd and $n^2$ is even.
  So $n = 2k-1$ for some $k in ZZ^+$. So $n^2 = (2k-1)^2 = 4k^2 -4k+1 = 2(2k^2-2k)+1$, so $n^2$ is odd.

  Therefore contradiction and so if $n^2$ is even then $n$ is even ]
  #remark-block[Showing $A => B$ is equivelant to showing $¬B => ¬A$ ]

  #set enum(numbering: "(i)")
  #proposition[The solution to $x^2-5x+6 = 0 space (*)$ is $x=2$ or $x=3$ ]
  #pagebreak()
  This is in fact 2 statements in one.
  + $x=2$ and $x=3$ are solutions to $(*)$.
  + There are no other solutions to $(*)$

  #proof[
    + If $x=2$ or $x=3$, then $x-2=0$ or $x-3=0$, so $(x-2)(x-3) =0$, so $x^2-5x+6=0$
    + If $x^2-5x+6=0$, then $(x-2)(x-3)=0$, then $x-2=0$ or $x-3=0$ so $x=2$ or $x=3$
  ]
  Alternatively we could have just written:
  #proof[

    $x=2$ or $x=3$

    $<=>$ $x-2=0$ or $x-3=0$

    $<=>$ $(x-2)(x-3)=0$

    $<=>$ $x^2-5x+6=0$

  ]
  #remark-block[
    However it is vital that every step that is linked with $<=>$ is actually if and only if.
  ]

  #proposition[Every positive real is $>=1$ ]
  #proof[#strike[Proof]][

    #underline[Let $r$ be the least positive real.]

    Then either $r=1$, $r>1$, $r<1$:
    - If $r<1$ then $0<r^2<r$, contradiction (as $r$ is not the least positive real).
    - If $r>1$ then $0 < sqrt(r) < r$, contradiction (as $r$ is not the least positive real).
    So as one of these must be true, $r=1$
  ]
  #remark-block[Nonsense! Is there a smallest real number $r$? ]

  #warning-block[Every claim must be justified.]

  #pagebreak()

  == Combining Claims
  If $A$ and $B$ are assertions/propositions then we can write $A and B$ to mean "$A$ and $B$", and
  $A or B$ to mean "$A$ or $B$", and $not A$ for "NOT $A$"
  The truths of these assertions depend oon the truths of $A$ and $B$. As summarised below:
  #table(
    columns: 6,
    [$A$], [$B$ ], [$A and B$ ], [$A or B$ ], [$not A$ ], [$A => B$ ],
    [0],   [0],    [0],          [0],         [1],        [1],
    [0],   [1],    [0],          [1],         [1],        [1],
    [1],   [0],    [0],          [1],         [0],        [0],
    [1],   [1],    [1],          [1],         [0],        [1],
  )

  #remark-block[Note that $not (A and B)$ is equivelant to $(not A or not B)$

  Also $A => B$ is equivelant to $not A or B$ and hence $B or not A$ and hence $not B => not A$ ]

  === Negation of qualifiers.

  Let $x$ be some object, and $A(x)$ be some property

  $not (forall x A(x))$ means $exists x space not A(x)$

  And

  $not (exists x A(x))$ means $forall x space not A(x)$

  = Elementary Number Theory

  == The natural numbers
  Intuitively the naturals consist of: $1, space 1+1, space 1+1+1, space dots$

  But how do you know you have captured all the natural numbers? How do you know they are all distinct?

  We should assume:

  The natural numbers, written $NN$ is a set containing a special element '1' and with a special operation "+1", satisfying:

  + $forall n in NN, space n+1 != 1$
  + $forall m,n in NN$ if $n !=m$ then $n+1 != m+1$
  + For some property $P(n)$ if $P(1)$ is true, and $forall n in NN P(n) = P(n+1)$ , then $forall n in NN P(n)$ is true

  #remark-block[
    - (i)-(iii) are known as the Peano axioms
    - (i) and (ii) capture the distinctness of the natural numbers.
    - (iii) Captures our idea of the Natural numbers being complete. (by taking $P(n) =$ "$n$ is on the list").
  ]

  Now we can write $2$ for $1+1$, $3$ for $1+1+1$, and so on.
  #definition-box[
    The operation "$+k$ " is defined as follows

    $n+(k+1) := (n+k)+1$

    (Then taking $P(n)=$ "$+n$ "is defined, by (iii) is defined.)
  ]
  Multiplication and Powers are similarly defined.

  Now observe the following properties that follow (the intuitive arithmetic properties)
  #property[
    $forall a,b in NN a+b=b+a$ (+ is commutative)
  ] <prty:n1>
  #property[
    $forall a,b in NN a b = b a$ (+ is associative)
  ] <prty:n2>
  #property[
    $forall a,b,c in NN (a+b)+c = a + (b+c)$ (+ is associative)
  ] <prty:n3>
  #property[
    $forall a,b in NN (a b)c=a(b c)$ ($times$ is commutative)
  ] <prty:n4>
  #property[
    $forall a,b,c in NN a(b+c)=a b + a c)$ ($times$ is distributive)
  ] <prty:n5>

  #definition-box[Less than][$a<b$ if and only if $a+c=b$ for some $c in NN$ ] <def:lessThanNaturals>

  And now the @def:lessThanNaturals above gives us some more propeties:
  #property[$forall a,b,c in NN space a<b => a+c < b +c$ ] <prty:n6>
  #property[$forall a,b,c in NN space a<b => a c < b c$ ] <prty:n7>
  #property[$forall a,b,c in NN space a<b$ and $b<c =>a<c$ ] <prty:n8>
  #property[$forall a in NN, space not(a < a)$ ] <prty:n9>

  == Weak induction and Strong Induction

  Axiom (iii) is also known as the Weak Principle of Induction (WPI).

  Another form is the Strong Principle of Induction (SPI) defined by:
  #definition-box[Strong principle of induction][ + $P(1)$ holds
  + $forall n in NN$ we have $P(m)$ is true $forall m <=n => P(n+1)$] <def:SPI>
  #proposition[SPI is equivelant to WPI]
  #proof[
    Clearly SPI $=>$ WPI

    To go the other way (WPI $=>$ SPI) apply $Q(n)=$ "P(n) holds $forall m <= n$ "
  ]

  #definition-box[Well ordering principle (WOP)][
    if $P(n)$ holds for some $n in NN$ then there is a least $n in NN s.t. space P(n)$ holds.
  ] <def:wop>
  #theorem[SPI$=>$WOP] <thm:wop>

  #proof[
    Suppose the contrary i.e. there is no least $n in NN s.t. space P(n)$ holds.
    Now we want to show that $P(n)$ does not hold $forall n in NN$ using SPI

    Consider $Q(n) = not P(n)$

    Certainly $P(1)$ false (otherwise would be least value to satisfy $P(n)$ ), and so $Q(1)$ is true.

    Given $n in NN,$ suppose $Q(k)$ is true $forall k < n$. Then $P(k)$ is false. So $P(n)$ is false otherwise $n$ would be the minimal element, for which $P$ holds, hence $Q(n)$ is true.

    So both (i) and (ii) of @def:SPI are satisfied and so $Q(n)$ is true for all $n in NN$. Thus $P(n)$ is false $forall n in NN$ contradicting @def:wop

  ]

  WOP allows us to prove $P(n)$ is true by using the minimal counterexample to form a contradiction.

  == The integers
  The integers, written $ZZ$ consist of all symbols $n$, $-n$, where $n in NN$ along with $0$.
  You can define $+$ and $times$ on $ZZ$ from the definitions for $NN$ and you can also check that rules (1)-(5) also still hold.
  #property[$forall a in ZZ, space a+0=a$ (identity for $+$) ]
  #property[$forall a in ZZ exists b in ZZ space s.t. space a+b=0$ (inverses for addition)]

  #definition-box[Less than on integers][
    for $a, b in ZZ$

    $a< b$ if $a+c=b$ for some $c in NN$
  ] <def:lessThanIntegers>
  It then follows that rules @prty:n6,@prty:n8, and @prty:n9 still hold but @prty:n7 must be modified.

  #property[$forall a,b,c in ZZ,$ if $a<b and c > 0 => a c < b c$ ] <prty:i7>

  == The rationals
  The rationals written $QQ$, consist of all expressions $frac(a, b)$ where
  $a,b in ZZ, space b!=0$.

  Also $frac(a, b)=frac(c, d) <==> a d=b c$

  #definition-box[Rational operators][
    $ frac(a, b)+frac(c, d) = frac(a d+b c, b d) $

    $ frac(a, b) times frac(c, d) = frac(a c, b d) $
  ]
  It is then easy enough to show all the above rules of arithmetic apply.
  #remark-block[$NN subset.eq ZZ subset.eq QQ$ ]

  == Prime Numbers
  #definition-box[Divides][
    Given $a,b in ZZ$ we say 'a divides b', 'a is a factor of b' or $a | b$ if and only if

    $exists space c in ZZ space s.t., space a c=b$
  ] <def:division>
  #remark-block[$forall space b in ZZ, space pm 1$ and $pm b$ are always factors of b. All factors are called 'proper' or 'non-trivial' factors of $b$ ]
  #definition-box[Prime number][$n in NN$ is called a prime number if and only if $n >=2$ and its only factors are the trivial ones ($pm 1$ and $pm n$)]
  #definition-box[Composite Number][$n in NN$ is called a composite number if and only if $n >=2$ and it is not prime.]

  #proposition[Every natural number can be written as the product of primes.] <prop:prime1>
  #proof[ By induction on $n in NN, n >= 2$:

    *Base Case $n=2$*: 2 is prime so can be written as a product of primes.

    *Inductive Step:* Assume the statement holds for all numbers up to and including $n-1$.

    Then if $n$ is prime then done.
    If $n$ is composite then $n = a b$ for some $a,b in NN, a,b>=2$. By the hypothesis (and as $a,b<n$ ) $a = p_1,p_2, dots,p_n$ and $b = q_1,q_2,dots,q_m$ for some primes $p_1,p_2,...,p_n,q_1,...,q_m$ and $n,m in NN$. So $n=p_1p_2p_3 dots p_n q_1q_2 dots q_m$ and so can be expressed as a product of primes. #qedhere
  ] <prf:prime1>

  #theorem[][There are infinitely many prime numbers.]
  #proof[Suppose for sake of contradiction that there are finitely many primes. Then all the primes are $p_1,p_2, dots ,p_k$ for some $k in NN$

  Now take $N=product_(i=1)^k p_i +1$. Now $p_1 divides.not N$ as otherwise $p_1 divides 1$ but $p_1 >=2$. Likewise $p_2,...,p_k$ don't divide $N$.
  So $N$ can't be written as a product of primes contradicting @prop:prime1 ] <prf:prime2>

  #note-block[
    Our proof of @prop:prime1 does not guarantee uniqueness.

    However $21=3 times 7$ is clearly unique.

    How about $295869 = 3 times 7 times 73 times 193$

    Why does $9040 times 40099 != 6701 times 54151$
  ]
  #proposition[Euclid's Lemma][If $p$ is prime and $p divides a b$ then $p divides a$ or $p divides b$. ] <prop:prime2>

  To prove @prop:prime2 we need more tools.

  #definition[Highest Common Factor (HCF)][

    Given $a,b in NN$ and $c in NN$ is,

    the highest common factor (HCF) or greatest common divisor (GCD) of $a$ and $b$ if:

    + $c divides a$ and $c divides b$ ($c$ is a common divisor of $a,b$)
    + if for some $d in NN$, $d divides a$ and $d divides b => d divides c$
    #notation-box[
      We also write $c = h c f (a,b) = g c d(a,b) = (a,b)$
    ]
  ] <def:hcf>
  #example-box[
    The factors of $12$ are $1,2,3,4,6,12$.

    The factors of $18$ are $1,2,3,6,18$

    So the common factors are $1,2,3,6$.
  ]

  Now to use $h c f$ we need to show it always exists.

  #proposition[Division Algorithm][
    let $n,k in NN$, then we can write $n=q k+r$, where $q,r in ZZ$, with $0 <= r <=k-1$.

    $r$ can be referred to as the remainder, $q$ can be referred to as the quotient.
  ] <prop:div_alg>

  #proof[By induction on $n in NN$.

  *Base case:* true for $n=1$ ($q=0,r=1$)

  *Inductive step:* suppose $n>=2$ and the statement holds for $n-1$, i.e. $n-1=q k +r$ for some $q,r in ZZ, 0<=r<=k-1$.

  Now if $r < k-1$ then $n = (n-1)+1 = q k +r+1 = q k +(r+1)$. With $q,r in ZZ$ and $0 <=r<=k-1$.

  Now if $r=k-1$ then $n = q k+k-1+1 = (q+1)k+0$. So also holds. ]
  #corollary[The $q,r$ obtained are unique to each number.]
  #proof[If $n=q k+r = q`k+r`$. Then $(q-q`)k = r`-r$, with $-k<R H S<k$, so $q`=q, r=r`$. ]

  #pagebreak()

  === Euclid's Algorithm
  #table(
    columns: 2,
    [INPUT],       [a b],
    [STEP $1$],    [$a = q_1b+r_1$, $0 <= r_1 <=b-1$ ],
    [STEP $2$],    [$b=q_2r_1+r_2$, $0<= r_2 <= r_1-1 <= b-2$ ],
    [STEP $3$],    [$r_1=q_3r_2+r_3$, $0 <= r_3 <= r_2-1 <= b-3$ ],
    [...],         [...],
    [STEP $n$],    [$r_(n-2)=q_n r_(n-1)+r_n$, $0<=r_n<=r_(n-1)-1 <= b-n$ ],
    [STEP $n+1$ ], [$r_(n-1)=q_(n+1) r_(n)+r_(n+1)$, #math.space $r_(n+1)=0$ ],
  )
  Then the output is $r_n$

  Observe that the algorithm will terminate in $n<b$ steps since $b>r_1>r_2>...>r_n>0$

  #theorem[The output of Euclid's Algorithm with input $a,b$ is $h c f (a,b)$ ]
  #proof[
    + Have $r_n divides r_(n-1)$ as $r_(n+1)=0$. So $r_n divides r_(n-2)$ so $r_n divides r_i, forall i = 1,2,dots,n-1$ (inductively).

      Hence $r_n divides b$, and hence $r_n divides a$
    + Given $d space s.t. d divides a$ and $d divides b$, we have $d divides r_1, d divides r_2, dots, d divides r_n$

      So $d divides r_n$
    So $r_n$ satisfies @def:hcf and so $h c f(a,b) = r_n$
  ]
  #example-box[To obtain $h c f(87,52)$:

  $ 87 = 1 times 52 + 35 $
  $ 52=1*35+17 $
  $ 35 = 2*17 +1 $
  $ 17 = 17 times 1 $
  So $h c f(87,52)=1$ ]

  When $h c f(a,b) = 1$ then we say $a$ and $b$ are *#underline[coprime]*.

  Also observe that we can reverse Euclids Algorith:
  #example-box[$ 1 & = 35-2 times 17                        \
      & = 35-2times (52 - 1 times 35)          \
      & =-2 times 52 + 3 times 35              \
      & =-2 times 52+3 times (87 - 1 times 52) \
      & =-5 times 52 +3 times 87 $ ]

  #theorem[Bezout's Identity][$forall a,b in NN, exists x,y in ZZ space s.t. space x a+y b = h c f(a,b)$

  i.e. We can write $h c f (a,b)$ as a linear combination of a and b ] <thm:bezoutsIdentity>
  #proof[Proof: 1][Run Euclid's Algorithmm with input $a,b$ to obtain an output $r_n$, at step $n$ we have

  $r_n=x r_(n-1) + y r_(n-2)$, for some $x,y in ZZ$. But from Step $n-1$ we see that $r_(n+1)$ is expressible as $r_(n-1) = x r_(n-2)+y r_(n-3)$ for some $x,y in ZZ$ continuing inductively we have $forall i = 2,3,dots,n-1 r_n = x r_(i)+ y r_(i-1)$ for some $x,y in ZZ$ thus $r_n = x a + y b$ for some $x,y, in ZZ$ (by steps 1 and 2). ]
  #remark-block[Euclid's algorithm not only proves the existence of $x,y in ZZ$ but also gives a relatively quick and easy way to find them.]
  #proof[Proof 2][let $h$ be the least positive linear combination of $a,b$ i.e. the least positive integer of the form $x a +y b$ for some $x,y in ZZ$

  We shall show that $h = h c f (a,b)$. To see (ii) of the definition observe that given $d in NN, space s.t. d divides a$ and $d divides b$, we have $d divides a x + y b space forall x,y in ZZ$ so $d divides h$.

  To see (i) of the definition, suppose $h divides.not a$ then by the division algorithm, we can write $a = q h +r$ for some $q,r in ZZ$ with $0 < r < h$. Hence $r = a -q h = a -q(x a + y b) = (1-q x)a - q b y$. Which is also a linear combination of $a$ and $b$, and strictly smaller that $h$, contradicting the definition of $h$. Therefor $h divides a$ and by a similar argument, $h divides b$ hence by definition $h = h c f (a,b).$ ]
  #remark-block[Proof 2 tells us that the $h c f$ can be written using a linear combination of $a$ and $b$, but it gives no way to find $h c f(a,b)$ or the coefficients $x,y in ZZ$. ]

  === Bezout's Theorem
  Does $160x + 72y = 33$ have integer solutions?
  - No as $L H S$ is even and $R H S$ is odd.
  #corollary[Bezout's Theorem][Let $a,b in NN$ then the equation $a x + b y = c$ has integer solutions if and only if $h c f (a,b) divides c$. ]
  #proof[($==>$) Let $h = h c f(a,b)$. Suppose there are $x,y in ZZ space s.t. a x + b y = c$ then since $h divides a$ and $h divides b$ then also $h divides c$.

  ($<==$) Conversely suppose $h divides c$. Then by @thm:bezoutsIdentity, $exists x`,y` in ZZ space s.t. space a x`+b y` = h$. Also $ c = frac(c, h)h = frac(c, h)(a x`+b y`)= a frac(c x`, h) + b frac(c y`, h) = c $ ]

  === Fundamental theorem of Algebra
  #theorion-restate(filter: <prop:prime2>)
  #proof[Suppose $p divides a b$ but $p divides.not a$, so then $h c f (a,p) = 1$. Thus by theorem 7 $exists x,y in ZZ space s.t. space x p + y a = 1$. It follows $x b p + y a b = b$ whence $b$ is a multiple $p$. ]

  #remark-block[ //
    + Similarly if $p divides a_1, dots, a_n$ then $p divides a_i$ for some $i = 1,2,dots, n$.

      Indeed @prop:prime2 tells us if $p divides a_1,a_2,dots, a_n$ then $p divides a_1,a_2,dots,a_(n-1)$ or $p divides a_n$ and so on inductively
    + Also for @prop:prime2 to hold we *need* $p$ to be a prime.
  ]
  #theorem[Fundamental Theorem of Algebra][Every natural number $n >= 2$ is expressible as a product of primes, uniquely up to reordering.] <thm:>
  #proof[The existence of this factorisation comes from @prop:prime1. Now we will use induction to prove uniqueness.
  - Base case: True for $n=2$ (as it is prime)
  - Given $n>2$. Suppose n is prime then true.
    Otherwise it is composite and let $n = p_1p_2dots p_k = q_1q_2dots q_k$ where $p_i,q_j$ are all prime.
    WTP: $k = l$ and after reordering $p_i=q_i, forall i = 1,2,dots,k$.

    It follows $p_1 divides n = q_1dots q_l$, so by @prop:prime2, $p_1 divides q_i$ for some $i$. Relabelling $q_j$, we have $p_1=q_1$, so $ n / p_1 = p_2 dots p_k = q_2 dots q_k < n $ By the induction hypothesis, $k = l$ and after reordering $p_2 =q_2, dots, p_k=q_k$] <prf:>

]
