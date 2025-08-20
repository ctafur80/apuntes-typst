
#import "@local/ctafur-maths-template:0.1.0": *



== Algunas identidades

Una identidad sobre los coeficientes binómicos que es muy útil es la
siguiente.


// Proposición
Simetría en los Coeficientes Binómicos

Dados $n, k in NN$, se cumple

$ binom(n, k) = binom(n, n-k) $


Se podría demostrar mediante su expresión como fracción de factoriales, pero
más elegante sería dar una definición combinatoria. En este caso, es
bastante sencilla.


// Demostración
Recuerde que el coeficiente binómico

$ binom(n, k) $

indica las distintas selecciones de $k$ elementos de un conjunto de $n$
elementos, sin tener en cuenta el orden. Pero, si se fija, al seleccionar
$k$ elementos, también está seleccionando los $n-k$ elementos restantes. Es
decir, los elementos que deshecha es como si también los seleccionara, por
lo que el número de selecciones posibles sería igual que el número de las
distintas formas de dechechar elementos.

Ahora, vamos a ver otra identidad que es muy útil.


// Proposición
Identidad de Pascal
Dados $k, n in NN$ siendo $1 lt.eq k lt.eq n-1$. Se cumple

$ binom(n, k) = binom(n-1, k) + binom(n-1, k-1) $

La justificación de los valores entre los que se pueden mover las variables
que aparecen, lo que debe tener en cuenta es que, en el desarrollo del
coeficiente binómico no aparezca un factorial de un número negativo. Sí
puede aparecer $0!$, que, como dijimos, vale 1.

También hay quien la llama Regla de Pascal o Fórmula de Pascal.

Se pueden dar varias demostraciones de este hecho. Una muy directa y
sencilla es mediante manipulaciones algebraicas de esos coeficientes
binómicos. Es bastante fácil. También se puede dar una demostración
combinatoria que es más creativa y entretenida. Sería la siguiente.


// Demostración
Sea $S$ un conjunto de $n$ elementos. Designaremos por $S_k$ al conjunto de
todos sus subconjuntos de tamaño $k$. Se podría expresar como $S_k =
cal(P)_k (S)$. Como ya sabemos por combinatoria, se tiene que

$ |S_k| = binom(n, k) $

Lo que pretendemos hacer a continuación será, a partir de la selección de un
elemento arbitrario $e$ de $S$, formar una partición de $S_k$ en dos
conjuntos de conjuntos de tamaño $k$ tales que los de uno contengan siempre
a $e$ y los del otro no lo contengan nunca.

Partimos de un conjunto

$ D = S without {e} $

que, como es evidente, tiene por tamaño $n-1$.

A partir de este, generamos el conjunto $D_k$, formado por todos los
subconjuntos de $D$ de tamaño $k$. Se tiene, por lo que ya sabemos de
combinatoria, que

$ |D_k| = binom(n-1, k) $

Ahora, en lugar de centrarnos en $D_k$, lo hacemos en $D_(k-1)$, es decir,
el conjunto de todos los subconjuntos de $D$ de tamaño $k-1$. Este tiene por
tamaño

$ |D_(k-1)| = binom(n-1, k-1) $

A partir de este, vamos a generar un conjunto $F_k$ simplemente uniendo cada
uno de sus elementos, que son conjuntos de tamaño $k-1$, con ${e}$. Por
tanto, los conjuntos que constituyen $F_k$ tienen tamaño $k$.
Alternativamente, podíamos haber dado la definición en forma simbólica
siguiente:

$ F_k = {M union {e} | M in D_(k-1)} $

El tamaño de $F_k$ será, entonces, el mismo que el de $D_(k-1)$, que es

$ |F_k| = |D_(k-1)| = binom(n-1, k-1) $

Si se fija, todos pares de conjuntos de $D_k$ y $F_k$ son disjuntos, puesto
que todos los conjuntos que constituyen a $F_k$ contienen al elemento $e$,
cosa que no sucede para ninguno de los que constituyen a $D_k$. Además,
entre ambos, forman todos los subconjuntos posibles de $k$ elementos de $S$,
es decir, $S_k$. Es decir,

$ S_k = D_k union F_k " y " D_k inter F_k = emptyset $

Debido a esto, $D_k$ y $F_k$ forman una partición de $S_k$, tal y como
pretendíamos. Por tanto, se tiene que

$ |S_k| = |D_k| + |F_k| $

o, lo que es lo mismo,

$ binom(n, k) = binom(n-1, k) + binom(n-1, k-1) $

Si se fija, la fórmula anterior nos sirve como definición recursiva del
coeficiente binómico. TKTK.

Vamos ahora a hacer una prueba para comprobar si se puede ampliar el signo
de llaves:

$ n! = cases(
    1         & "si" n = 0,
    (n-1)! n  & "si" n eq.not 0
) $





