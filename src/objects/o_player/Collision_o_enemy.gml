/// @desc Damage player
if (state = player_state.dash){
	with(o_camera){
		shake_remain = 6;
		shake_magnutied = 6;
		shake_length = 1*room_speed;
		Shake(0.25,2.5);
	}
	instance_destroy(other);

	if (heal_status == false)  point = point + add_point;		
	else if (heal_status == true) point = point + add_point + heal_point;	
	
	audio_play_sound(snd_enemy_eat,1,false);
}
else{
	with(o_camera){
		shake_remain = 6;
		shake_magnutied = 6;
		shake_length = 1*room_speed;
		Shake(0.25,2.5);
	}
	instance_destroy(other);
	point = point - 1;
	
	audio_play_sound(snd_player_hurt,1,false);
}
