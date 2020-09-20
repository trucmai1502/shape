audio_play_sound(snd_player_hurt,1,false);
switch(menu_index){
	case 0: 
		room_goto(r_one);
		break;
	
	case 1:
		game_end();
		break;
	
}