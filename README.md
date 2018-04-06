Ponto 1 do trabalho: Planear Viagens (guardado no ficheiro viagens.pl)

Ponto 2 do trabalho: Gramática Portuguesa (guardado no ficheiro gramatica.pl)

Instruções de compilação:

No diretório onde está guardado o trabalho escrever: swipl.

Compilar o ponto 1: "[viagens]." ou "['viagens.pl']." (sem aspas).

Compilar o segundo ponto: "[gramatica]." ou "['gramatica.pl']." (sem aspas).

Instruções de executação do ponto 2:

Verificar se, por exemplo, a frase "O rio corre para o mar" está correta e qual a sua árvore sintática: sentence(X,['O',rio,corre,para,o,mar],[]).

Ver todas as frases possíveis e as suas respetivas árvores sintáticas:
sentence(X,L,[]). inserindo sempre ponto e vírgula para mostrar mais output.
