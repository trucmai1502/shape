switch (room){
	case r_start: {
	audio_play_sound(snd_loading,1000,true);
	audio_stop_sound(snd_background_music);
		break;
	}
		
	case r_one: {
		audio_play_sound(snd_background_music,1000,true);
		audio_stop_sound(snd_loading)
		break;
	}
}