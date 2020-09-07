/// @desc Fade
image_alpha -= 0.10;
if (o_player.state = o_player.player_state.dash) image_blend = o_player.image_blend;
if (image_alpha <= 0){
	instance_destroy();	
}