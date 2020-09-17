enemy_spawn_counter++;

if (enemy_spawn_counter >= 0.25*room_speed){
	if (!instance_exists(o_enemy)){
		repeat(enemy_repeat_time_spawner){
			instance_create_layer(irandom(room_width - 70),irandom(room_height - 70),"Enemy",o_enemy);	
		}
	}
	enemy_spawn_counter = 0;
}
