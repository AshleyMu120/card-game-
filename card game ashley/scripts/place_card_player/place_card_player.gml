// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function place_card_player(hands,comparison,index){
	var takeout_variables=[hands,comparison];
audio_play_sound(snd_water,0,false)
	if (hands[index]==noone){
		show_debug_message("NO CARDS IN THE INDEX IN THE HANDS!!!")
		return takeout_variables;
	}else{
		comparison[0]=hands[index];
		hands[index]=noone;
	}
	takeout_variables=[hands,comparison]
	return takeout_variables;
} 