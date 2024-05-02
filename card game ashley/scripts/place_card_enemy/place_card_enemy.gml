// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function place_card_enemy(enemy,comparison,index){
	var takeout_variables=[enemy,comparison];
audio_play_sound(snd_water,0,false)
	if (enemy[index]==noone){
		show_debug_message("NO CARDS IN THE INDEX IN THE ENEMY!!!")
		return takeout_variables;
	}else{
		comparison[1]=enemy[index];
		enemy[index]=noone;
	}
	takeout_variables=[enemy,comparison]
	return takeout_variables;
} 