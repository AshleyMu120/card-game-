
for (var i=0;i<24;i++){
	
var card=deck[i];
if (instance_exists(card)){
draw_sprite(card.sprite_index,card.image_index,card.x,card.y);
}
	
}


for (var j=0;j<24;j++){
	
var card=discard[j];
if (instance_exists(card)){
draw_sprite(card.sprite_index,card.image_index,card.x,card.y);
}
	
}


for (var a=0;a<3;a++){
	
var card=hands[a];
if (instance_exists(card)){
draw_sprite(card.sprite_index, 1,card.x,card.y);
}
	
}


for (var b=0;b<3;b++){
	
var card=enemy[b];
if (instance_exists(card)){
draw_sprite(card.sprite_index,card.image_index,card.x,card.y);
}
	
}

var card=comparison[0];
if (instance_exists(card)){
draw_sprite(card.sprite_index,1,card.x,card.y);
}
var card=comparison[1];
if (instance_exists(card)){
draw_sprite(card.sprite_index,card.image_index,card.x,card.y);
}


















