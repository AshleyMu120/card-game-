// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function discard_card_enemy(enemy,discard,index){ //The index of the card to be discarded from the enemy's hand

	var takeout_variables=[enemy,discard];  
	//this array will be used to store both the enemy's cards and the discard pile

	if (enemy[index]==noone){
		show_debug_message("NO CARDS TO BE DISCARDED IN ENEMY!!!")
		return takeout_variables;
	}else{
		
		
		for (var i=0;i<array_length(discard);i++){
			if(discard[i]==noone){
				
				discard[i]=enemy[index];  // the enemy has a card at the specified index, it assigns to the discard array (discard[1]) and them
				enemy[index]=noone;	
				
				break;
			}
			
			
		}
	}
takeout_variables=[enemy,discard] // update current state of enemy and discard arrays
	return takeout_variables;
} 
