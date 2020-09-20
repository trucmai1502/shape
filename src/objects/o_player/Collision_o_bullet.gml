/// @desc Damage player
if (state == player_state.dash){
	state = player_state.normal;
	point -= 0.25;
	image_blend = o_bullet.image_blend;
	instance_destroy(o_player_effect);
}