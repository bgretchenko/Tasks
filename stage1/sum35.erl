-module(sum35).
-export([find_sum/1]).


find_sum(N) ->
	if
		N =< 3 -> undefind;
		N > 3  -> find_sum(N - 1, 0)
	end.
	
find_sum(3, Acc) ->
	Acc + 3;
find_sum(N, Acc) ->
	if
		N rem 3 =:= 0 -> find_sum(N-1, Acc + N);
		N rem 3 =/= 0 ->
		if
			N rem 5 =:= 0 -> find_sum(N-1, Acc + N);
			N rem 5 =/= 0 -> find_sum(N - 1, Acc)
		end
	end.
