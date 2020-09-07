if (state == player_state.dash){
	state = player_state.normal;
	image_blend = o_bullet.image_blend;
	instance_destroy(o_player_effect);
}