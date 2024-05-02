/// @description Insert description here
// You can write your code in this editor

hands=array_create(3, noone);
deck=array_create(24, noone);
discard=array_create(24,noone);
enemy=array_create(3,noone);
comparison=array_create(2,noone); 


player_score=0;
enemy_score=0;

enum gamestate{
system_turn_replenish_deck,
system_turn_shuffle_deck,
draw_player,
draw_enemy,
place_enemy,
place_player,
compare,
discard_enemy,
discard_player,
idle,
}

state=gamestate.idle;

for (var i=0;i<24;i++){
	var kind_of_card=cardtype.rock;
	
	if(i<8)
	{
		kind_of_card=cardtype.rock;		
	}
	else if(i<16)
	{
	kind_of_card=cardtype.paper;	
		
	}
	else if(i<24)
	{
	kind_of_card=cardtype.scissors;	
	}
	
	deck[i]=instance_create_layer(0,540,"cards",obj_card,{type : kind_of_card});
	
}
randomize()
deck=shuffle_deck(deck);
display_deck(deck);

activated=true;

replenish_and_shuffle =false;






