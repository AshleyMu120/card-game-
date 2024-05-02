/// @description Insert description here
// You can write your code in this editor

var distance = sqrt( power(card_x_position-x, 2) + power(card_y_position-y, 2))
if abs(distance)>=20{
	move_towards_point(card_x_position,card_y_position,20);
}
else if (abs(distance) > 1){
	var distance_left=sqrt( power(card_x_position-x, 2) + power(card_y_position-y, 2))
	move_towards_point(card_x_position,card_y_position,distance_left);
	//speed = distance_left;

}else{
	speed = 0;
		//instance_destroy()

	
}














