// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function replenish_deck(discard,deck){
	for (var i = 0; i < array_length(discard); i ++){
		var value = discard[i];
		deck[i] = value;
	}
	return deck;
	
}