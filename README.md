### Versão do Sistema utilizado:
4.13.0-37-generic x86_64 GNU/Linux
<br />
<br />

### Trabalho:
Ponto 1: Planear Viagens (guardado no ficheiro viagens.pl)

Ponto 2: Gramática Portuguesa (guardado no ficheiro gramatica.pl)
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

### Instruções de execução do ponto 1:
Saber informações do voo (dia, número, hora de partida, hora de chegada) de Origin até Destination:
````ProLog
flight(Origin,Destination,Day,FlightNum,DepTime,ArrTime).
````

Saber a rota num determinado dia de Origin até Destination onde Route é dada da seguinte forma: [Origin-Destination:FlightNum:DepartureTime]:
````Prolog
route(Origin,Destination,Day,Route).
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
