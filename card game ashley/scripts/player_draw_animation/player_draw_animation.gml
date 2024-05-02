// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_draw_animation(hand){
	var position_1_x=352;
	var position_1_y=576;
	audio_play_sound(snd_water,0,false)
	var position_2_x=640;
	var position_2_y=576;
	audio_play_sound(snd_water,0,false)
	var position_3_x=960;
	var position_3_y=576;
	audio_play_sound(snd_water,0,false)
	
	if (instance_exists(hand[0])){
	hand[0].card_x_position=position_1_x;
	hand[0].card_y_position=position_1_y;
	}
	
	if (instance_exists(hand[1])){
	hand[1].card_x_position=position_2_x;
	hand[1].card_y_position=position_2_y;
	}
	
	if (instance_exists(hand[2])){
	hand[2].card_x_position=position_3_x;
	hand[2].card_y_position=position_3_y;
}

}