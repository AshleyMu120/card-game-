// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function empty_discard(discard){
	for (var i=0; i<24; i++){
		if (discard[i] != noone)
		{
			discard[i]=noone;
		}	
	}
	return discard;
}