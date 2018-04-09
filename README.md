### Versão do Sistema utilizado:
Linux rita-ubuntu 4.13.0-37-generic #42~16.04.1-Ubuntu SMP Wed Mar 7 16:03:28 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
<br />
<br />

Ponto 1 do trabalho: Planear Viagens (guardado no ficheiro viagens.pl)

Ponto 2 do trabalho: Gramática Portuguesa (guardado no ficheiro gramatica.pl)
<br />
<br />

### Instruções de compilação:

No diretório onde está guardado o trabalho escrever:
````Bash
$ swipl
````

Compilar o ponto 1:
````ProLog
?- [viagens].
````

Compilar o ponto 2:
````ProLog
?- [gramatica].
````
<br />

### Instruções de executação do ponto 2:

Verificar se, por exemplo, a frase "O rio corre para o mar" está correta e qual a sua árvore sintática:
````ProLog
sentence(X,['O',rio,corre,para,o,mar],[]).
````

Gerar todas as frases possíveis e respetivas árvores sintáticas (inserindo sempre ponto e vírgula para mostrar mais output):
````ProLog
sentence(X,L,[]).
````
<br />
