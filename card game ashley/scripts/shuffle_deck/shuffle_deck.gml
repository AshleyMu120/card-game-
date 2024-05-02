// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shuffle_deck(deck){
	
var shuffled_deck=array_create(array_length(deck),noone)

var looping=true;

for (var i=0;i<array_length(deck);i++){
	while(looping){
		var ran=irandom(array_length(deck)-1)
		if(shuffled_deck[ran]==noone) {
	
			shuffled_deck[ran]=deck[i];
			looping=false;
		}
		
	}
	looping=true;
}
audio_play_sound(snd_shuffle,0,false)
	return shuffled_deck;
	
	//return array_shuffle(deck);
} 