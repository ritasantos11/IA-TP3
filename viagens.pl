:- op(50,xfy,:).

% diz que existe um voo de Origin para Destination e a sua Hora de Partida e Chegada num determinado dia
flight(Origin, Destination, Day, FNum, DepTime, ArrTime) :-
	timetable(Origin,Destination,ListaVoos),
	member(DepTime/ArrTime/FNum/Days,ListaVoos),
	verifyDay(Day,Days).

verifyDay(Day,alldays) :- member(Day,[mo,tu,we,th,fr,sa,su]).
verifyDay(Day,ListofDays) :- member(Day,ListofDays).

% voo direto de Origin para Destination
route(Origin, Destination, Day, [Origin-Destination:FNum:DepTime]) :-
	flight(Origin,Destination,Day,FNum,DepTime,_).

% não há voo direto de Origin para Destination
route(Origin, Destination, Day, [(Origin-Place:FNum1:DepTime1)|RestRoute]) :-
	route(Place,Destination,Day,RestRoute),
	flight(Origin,Place,Day,FNum1,DepTime1,ArrTime1),
	deptime(RestRoute,DepTime2),
	transfer(ArrTime1,DepTime2).


% diz a Hora de Partida da Rota [_-_:_:DepTime]
deptime([_-_:_:DepTime], DepTime).

% há uma distância de pelo menos 40 minutos para se conseguir fazer transferência para outro voo
transfer(Hour1:Min1,Hour2:Min2) :-
	60*(Hour2-Hour1) + Min2-Min1 >= 40.



% timetable(Origin, Destination, [DepartureTime/ArrivalTime/FlightNumber/[Days]|L]).

timetable(edinburgh,london,
[9:40/10:50/ba4733/alldays,
13:40/14:50/ba4773/alldays,
19:40/20:50/ba4833/[mo,tu,we,th,fr,su]]).

timetable(london,edinburgh,
[9:40/10:50/ba4732/alldays,
11:40/12:50/ba4752/alldays,
18:40/19:50/ba4822/[mo,tu,we,th,fr]]).

timetable(london,ljubljana,
[13:20/16:20/ju201/[fr],
13:20/16:20/ju213/[su]]).

timetable(london,zurich,
[9:10/11:45/ba614/alldays,
14:45/17:20/sr805/alldays]).

timetable(london,milan,
[8:30/11:20/ba510/alldays,
11:00/13:50/az459/alldays]).

timetable(ljubljana,zurich,
[11:30/12:40/ju322/[tu,th]]).

timetable(ljubljana,london,
[11:10/12:20/yu200/[fr],
11:25/12:20/yu212/[su]]).

timetable(milan,london,
[9:10/10:00/az458/alldays,
12:20/13:10/ba511/alldays]).

timetable(milan,zurich,
[9:25/10:15/sr621/alldays,
12:45/13:35/sr623/alldays]).

timetable(zurich,ljubljana,
[13:30/14:40/yu323/[tu,th]]).

timetable(zurich,london,
[9:00/9:40/ba613/[mo,tu,we,th,fr,sa],
16:10/16:55/sr806/[mo,tu,we,th,fr,su]]).

timetable(zurich,milan,
[7:55/8:45/sr620/alldays]).