// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_deck_empty(deck){
	if (deck[0] == noone){
		return true;
	}
	return false;
	/*
	for(var i=0;i<array_length(deck);i++){
		if (deck[i]!=noone){
			return false;
	}
	return true
}*/
}