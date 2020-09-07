if (state = player_state.dash){
	instance_destroy(other);
	point = point + 1.25;
}
else{
	instance_destroy(other);
	point = point - 1;
}