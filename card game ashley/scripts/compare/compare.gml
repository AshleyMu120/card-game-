// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function compare_cards(cards){//[n,x] n, x are cards. n is the player's card, x is the enemy's card
	//n.type is the type of the card
	var winner=0; //0=player, 1 is the enemy, 2 = tie
	var player_cardtype = cards[0].type;
    var enemy_cardtype = cards[1].type;
	

	
	if (player_cardtype==cardtype.rock&&enemy_cardtype==cardtype.scissors){
	winner=0; 
	
	}else if (player_cardtype==cardtype.scissors&&enemy_cardtype==cardtype.rock){
	winner=1;
	
	}else if (player_cardtype==cardtype.paper&&enemy_cardtype==cardtype.scissors){
	winner=1;	

	}else if (player_cardtype==cardtype.scissors&&enemy_cardtype==cardtype.scissors){
	winner=2;	
	
	}else if (player_cardtype==cardtype.rock&&enemy_cardtype==cardtype.rock){
	winner=2;	
	
	}else if (player_cardtype==cardtype.rock&&enemy_cardtype==cardtype.paper){
	winner=1;	
	
	}else if (player_cardtype==cardtype.paper&&enemy_cardtype==cardtype.paper){
	winner=2;
	
	}else if (player_cardtype==cardtype.paper&&enemy_cardtype==cardtype.rock){
	winner=0;	
	
	}else if (player_cardtype==cardtype.scissors&enemy_cardtype==cardtype.paper){
	winner=0;
	
	}
	
	audio_play_sound(snd_flip,0,false)
return winner;//returning a number
}