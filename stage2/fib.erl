-module(fib).
-export([fib/1]).

fib(X) ->
	fib(0,0,1,0,X).
	
fib(N,A1,A2,A3,X) when A2 >= X -> 
	[N-1,A1,A3];
fib(N,A1,A2,A3,X)  ->
	case A2 rem 2 of
		0 -> fib(N + 1, A2, A1 + A2, A3 + A2, X);
		1 -> fib(N + 1, A2, A1 + A2, A3, X)
	end.
