/// @description Process stuff
randomize();
if (o_game_restart.game_restart_status == false){
	items_spawn_counter++;

	if (items_spawn_counter >=  20*room_speed && o_enemy.stop_times_items_collison_check == false){
		if (!instance_exists(o_heal_items) || !instance_exists(o_reset_items_items) || !instance_exists(o_stop_point) || !instance_exists(o_stop_times)){
				instance_create_layer(irandom(room_width - 70),irandom(room_height - 70),"Enemy",choose(o_heal_items,o_reset_items_items,o_stop_point,o_stop_times));	
		}
		items_spawn_counter = 0;
	}
}