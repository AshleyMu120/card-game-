// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function discard_animation(discard){

var starting_pos_x=1200;
var starting_pos_y=540;
var shift=16;


for (var i=0;i<array_length(discard);i++){
	if (instance_exists(discard[i])){
		discard[i].card_x_position=starting_pos_x;
		discard[i].card_y_position=starting_pos_y-shift*i;
	}else{
		break;	
	}
	
}
}