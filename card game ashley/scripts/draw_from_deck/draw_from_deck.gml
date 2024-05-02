// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_from_deck(deck,hands){
var takeout_variables=[deck,hands];
var last_card=noone;
var last_card_pos = -1;

	for (var i=0; i<array_length(deck);i++){	
		if(deck[i]==noone){
			if (i-1>=0){
				last_card=deck[i-1];
				last_card_pos = i-1;
				break;
			}else{
				show_debug_message("ERROR! DECK EMPTY! CANNOT DRAW");
				return takeout_variables;
			}
		}else if(i=array_length(deck)-1 && deck[i] !=noone){
			
			last_card=deck[i];
			last_card_pos=i;
		}
	}
	
	for(var j=0; j<array_length(hands);j++){
		if(hands[j]==noone){
			hands[j]=last_card;
			if (last_card_pos != -1){
				deck[last_card_pos] = noone;
				
			}else{
				show_debug_message("HAND FULL! CANNOT ADD CARD");
			}
			break;
		}
	}
	takeout_variables=[deck,hands];
	return takeout_variables;
}