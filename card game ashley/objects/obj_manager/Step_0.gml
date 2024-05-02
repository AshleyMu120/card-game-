/// @description Insert description here
// You can write your code in this editor
if (activated == false){
	return;
}

switch(state){
	case(gamestate.system_turn_replenish_deck):
		
		if (check_deck_empty(deck)){
			deck = replenish_deck(discard,deck);
			discard=empty_discard(discard);
			replenish_and_shuffle=true;
			activated = false;
			display_deck(deck);
		}
		state=gamestate.system_turn_shuffle_deck;
		break;
	
	case(gamestate.system_turn_shuffle_deck):
	if (replenish_and_shuffle==true){
		deck = shuffle_deck(deck);
		show_debug_message("hiiii");
		display_deck(deck);
		activated = false;
		replenish_and_shuffle =false;
	}
		state=gamestate.draw_player;
		break;
		
	case(gamestate.draw_player):
		for (var i=0; i<3; i++)
		{
			var cards_in_hands=[];
			cards_in_hands=draw_from_deck(deck,hands);
			deck=cards_in_hands[0];
			hands=cards_in_hands[1];
		}
			player_draw_animation(hands);
		state=gamestate.draw_enemy;
	
		activated = false;
		break;

	case(gamestate.draw_enemy):
		for (var a=0; a<3; a++)
		{
			var cards_in_enemy=[];
			cards_in_enemy=draw_from_deck(deck,enemy);
			deck=cards_in_enemy[0];
			enemy=cards_in_enemy[1];
		}
		enemy_draw_animation(enemy);
		state=gamestate.place_player;
		
		activated = false;
		break;
		
	case(gamestate.place_player):
		var player_select_cards=[];
		if (mouse_check_button_pressed(mb_left))
		{
			var select_cards =0;
			var instance =instance_position(mouse_x,mouse_y,obj_card)
			show_debug_message(instance)
			for (var j=0; j<3; j++)
			{	
			    if (hands[j]==instance){
					select_cards=j;
					player_select_cards=place_card_player(hands,comparison,j);
					hands=player_select_cards[0];
					comparison=player_select_cards[1];
		
					player_place_animation(comparison[0]);
					state=gamestate.place_enemy;
							activated = false;
				}
			}
		}
		
		break;
		
	case(gamestate.place_enemy):
		var enemy_select_cards=[];
		enemy_select_cards=place_card_enemy(enemy,comparison,0);
		enemy=enemy_select_cards[0];
		comparison=enemy_select_cards[1];
		
		enemy_place_animation(comparison[1]);
		state=gamestate.compare;
		
		activated = false;
		break;
		
	case(gamestate.compare):
		
		comparison[0].image_index=1;
		comparison[1].image_index=1;
		
		var who_is_the_winner=9;
		who_is_the_winner=compare_cards(comparison);
		
		if(who_is_the_winner==0){
			
		player_score+=1;	
		} else if(who_is_the_winner==1){
			
		enemy_score+=1;
		}
		
		state=gamestate.discard_player;
		
		activated = false;
		break;
		
	case(gamestate.discard_player):
	comparison[0].image_index=0;
	
		for(var c=0;c<array_length(hands);c++){
			if (hands[c] !=noone){
			var player_discard_cards_1=[];
			player_discard_cards_1=discard_card_player(hands,discard,c);
			hands=player_discard_cards_1[0];
			discard=player_discard_cards_1[1];
			discard_animation(discard);
			
			}
		}
	
	var player_discard_cards=[];
		player_discard_cards=discard_card_player(comparison,discard,0);
		comparison=player_discard_cards[0];
		discard=player_discard_cards[1];
		discard_animation(discard);
		state=gamestate.discard_enemy;
		
		activated = false;
		break;
		
	case(gamestate.discard_enemy):
		comparison[1].image_index=0;
		
		for (var j=0;j<array_length(enemy);j++){
			if (enemy[j] !=noone){
				var enemy_discard_cards_1=[];
				enemy_discard_cards_1=discard_card_enemy(enemy,discard,j);
				enemy=enemy_discard_cards_1[0];
				discard=enemy_discard_cards_1[1];
				discard_animation(discard);
			}
		}
	
	var enemy_discard_cards=[];
		enemy_discard_cards=discard_card_enemy(comparison,discard,1);
		comparison=enemy_discard_cards[0];
		discard=enemy_discard_cards[1];
		discard_animation(discard);
		state=gamestate.system_turn_replenish_deck;
		
		activated = false;
		break;

	case(gamestate.idle):
		state=gamestate.system_turn_replenish_deck;
		
		activated = false;
		break;
}

if (activated==false){
alarm[0]= 1 * room_speed;

	
}










