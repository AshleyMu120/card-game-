// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function discard_card_player(hands,discard,index){   
var takeout_variable=[hands,discard];

	if (hands[index]==noone){ 
		show_debug_message("There is no card to be discarded!!!")
		return takeout_variable;
	}else{
			for (var i=0;i<array_length(discard);i++){
			if(discard[i]==noone){
				
				discard[i]=hands[index];  // the enemy has a card at the specified index, it assigns to the discard array (discard[1]) and them
				hands[index]=noone;	
				
				break;
			}
			
			
		}
		
		
	}
	takeout_variable=[hands,discard]
	return takeout_variable;

}