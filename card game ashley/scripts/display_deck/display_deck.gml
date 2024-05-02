// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function display_deck(deck){

var starting_pos_x=10;
var starting_pos_y=540;
var shift=16;


for (var i=0;i<array_length(deck);i++){
	if (instance_exists(deck[i])){
	deck[i].card_x_position=starting_pos_x;
	deck[i].card_y_position=starting_pos_y-shift*i;
	}else{
	break;	
	}

}

}