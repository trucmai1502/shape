/// @description Stop times items

//Stop point
stop_point_items_collison_check = true;
stop_point_counter = 0;

//Stop times 
o_enemy.stop_times_items_collison_check = true;

//Effect
audio_play_sound(snd_items_use,1,false);

instance_destroy(other);