sentence(sentence(NP,VP)) --> noun_phrase_inicio(NP,Number,Type),verbal_phrase(VP,Number).

noun_phrase_inicio(noun_phrase(Det,Noun),Number,Type) --> determinant(Det,Number,Type,Inicio), noun(Noun,Number,Type).

noun_phrase(noun_phrase(Det,Noun),Number,Type) --> determinant(Det,Number,Type), noun(Noun,Number,Type).

verbal_phrase(verbal_phrase(Verb,NP),Number) --> verb(Verb,Number), noun_phrase(NP,Number,Type).

verbal_phrase(verbal_phrase(Verb,NP),Number) --> verb(Verb,Number), noun_phrase3(NP,Type).

verbal_phrase(verbal_phrase(Verb,NP),Number) --> verb(Verb,Number), noun_phrase2(NP,Type).

verbal_phrase(verbal_phrase(Verb),Number) --> verb(Verb,Number), [].

noun_phrase2(noun_phrase(Comp,Det,Noun),Type) --> preposition(Comp), determinant(Det,Number,Type),noun(Noun,Number,Type).

noun_phrase3(noun_phrase(Comp,Noun),Type) --> contraction(Comp,Number,Type), noun(Noun,Number,Type).


contraction(contraction(pela), singular, feminino) --> [pela].
contraction(contraction(na), singular, feminino) --> [na].
contraction(contraction(pelo), singular, masculino) --> [pelo].
contraction(contraction(no), singular, masculino) --> [no].
contraction(contraction(pelas), plural, feminino) --> [pelas].
contraction(contraction(nas), plural, feminino) --> [nas].
contraction(contraction(pelos), plural, masculino) --> [pelos].
contraction(contraction(nos), plural, masculino) --> [nos].

preposition(preposition(para)) --> [para].
preposition(preposition(com)) --> [com].

determinant(determinant('A'), singular, feminino, Inicio) --> ['A'].
determinant(determinant('O'), singular, masculino, Inicio) --> ['O'].
determinant(determinant('As'), plural, feminino, Inicio) --> ['As'].
determinant(determinant('Os'), plural, masculino, Inicio) --> ['Os'].

determinant(determinant(a), singular, feminino) --> [a].
determinant(determinant(o), singular, masculino) --> [o].
determinant(determinant(as), plural, feminino) --> [as].
determinant(determinant(os), plural, masculino) --> [os].

noun(noun(menina), singular, feminino) --> [menina].
noun(noun(floresta), singular, feminino) --> [floresta].
noun(noun(vida), singular, feminino) --> [vida].
noun(noun(noticia), singular, feminino) --> [noticia].
noun(noun(cidade), singular, feminino) --> [cidade].
noun(noun(porta), singular, feminino) --> [porta].
noun(noun(mae), singular, feminino) --> [mae].

noun(noun(tempo), singular, masculino) --> [tempo].
noun(noun(cacador), singular, masculino) --> [cacador].
noun(noun(rio), singular, masculino) --> [rio].
noun(noun(mar), singular, masculino) --> [mar].
noun(noun(vento), singular, masculino) --> [vento].
noun(noun(martelo), singular, masculino) --> [martelo].
noun(noun(cachorro), singular, masculino) --> [cachorro].
noun(noun(tambor), singular, masculino) --> [tambor].
noun(noun(sino), singular, masculino) --> [sino].
noun(noun(rosto), singular, masculino) --> [rosto].

noun(noun(lagrimas), plural, feminino) --> [lagrimas].

noun(noun(lobos), plural, masculino) --> [lobos].
noun(noun(tambores), plural, masculino) --> [tambores].

verb(verb(corre), singular) --> [corre].
verb(verb(correu), singular) --> [correu].
verb(verb(bateu), singular) --> [bateu].

verb(verb(corriam), plural) --> [corriam].
verb(verb(bateram), plural) --> [bateram].
