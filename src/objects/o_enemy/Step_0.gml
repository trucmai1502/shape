/// @description Process stuff

move_counter++;
#region Normal mode
if (stop_times_items_collison_check == false) {
	#region Movement 
			if (move_counter >= 2*room_speed){
				new_dir = random_range(50,120);
				speed = 10;
				direction = new_dir;
				move_counter = 0;
		}
			image_angle += 2
	#endregion	
			
	#region BULLET HELL GO BRR BRR
		bullet_counter++;
		with (o_bullet) speed = 2;	
	
		if (bullet_counter >= 1*room_speed){
			with(instance_create_layer(x,y,"Bullet",o_bullet)){
				direction = o_enemy.image_angle;
				image_angle = direction;
			}
			bullet_counter = 0;
		}
	#endregion	
}
#endregion 

// Stop times (Bullet + enemy move)
else{		
	speed = 0;	
	with (o_bullet) speed = 0;
	stop_times_counter++;
} 
// Times to switch to normal mode
if (stop_times_counter >= 3*room_speed && stop_times_counter_status == true) {
		stop_times_counter = 0;
		stop_times_items_collison_check = false;
}
		
#region Wrapping map
	if (x >= room_width + 1) x = 1;
	if (x <= -1) x = room_width - 1;
	if (y >= room_height + 1) y = 1;
	if (y <= -1) y = room_height -1 ;
#endregion
