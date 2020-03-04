/* Cost data */

cost(momo, 200).
cost(coke, 100).
cost(fries, 300).
cost(pizza, 400).


/* Rules */

total_cost([], 0).

total_cost([Item | Rest], Cost) :-
	cost(Item, ItemCost),
	total_cost(Rest, CostOfRest),
	Cost is ItemCost + CostOfRest.


/* Query

?- total_cost([momo, fries], Totals).
?- trace, total_cost([momo, fries], Totals).

*/
