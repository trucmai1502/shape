/// @desc Process stuff


#region Input
right	= keyboard_check(vk_right) || keyboard_check(ord("D"));
left		= keyboard_check(vk_left) || keyboard_check(ord("A"));
up		= keyboard_check(vk_up) || keyboard_check(ord("W"));
down	= keyboard_check(vk_down) || keyboard_check(ord("S"));
dash	= keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("E"));
hit_box = keyboard_check(vk_shift) || keyboard_check(ord("F"));
#endregion


#region Player state
if (player_move = true){
		switch (state) {
			case player_state.normal:{
		
				#region Movement 8 dir
					hsp = (right - left)*walkspeed;
					vsp = (down - up)*walkspeed;
					Collison();
					x += hsp;
					y += vsp;
				#endregion
		
				#region Switch
					if (dash) state = player_state.dash;
				#endregion
		
				break;
			}
	
			case player_state.dash:{
		
				#region Dash
		
					//Movement calculator
					if (right - left != 0) hsp = dash_speed*(right - left);
					else hsp = dash_speed*image_xscale;
					if (down - up != 0) vsp = dash_speed*(down- up);
			
					//Collison check
					Collison();
			
					//Apply movement
					x += hsp;
					y += vsp;
			
					//Effect
					dash_fade = true;
			
					//Switch
					dash_counter++;
					if (dash_counter >= dash_time){
						state = player_state.normal;
						dash_counter = 0;
						dash_fade = false;
					}	
			
				#endregion
		
				break;
			}
}
}
#endregion 

#region Point

		//Always minus point after 0.25 second
		point_counter++;
		if (point_counter >= 0.25*room_speed && point_minus_status == true){
			point -= 0.125;
			point_counter = 0;
		}
			show_debug_message(point);
			
		////Point result
		if (point >= point_max){
			show_debug_message("Win");
			game_status = "Win"
		}
		if (point <= point_min){
			show_debug_message("Loss");
			game_status = "Loss";
		}
		
#endregion

#region Items

		#region Stop_point_items_pocess (stop_times_items (point))
			if (stop_point_items_collison_check == true){
					point_minus_status = false;
					stop_point_counter++;
			}

			if (stop_point_counter>= 3*room_speed && stop_point_items_collison_check== true ){
				point_minus_status = true;
				stop_point_counter= 0;
				stop_point_items_collison_check = false;
			}

		#endregion

		#region Reset_point_items_process
			if (reset_time_items_collison_check == true){
				point_minus_status = false;
				point = 0;
				reset_time_items_counter++;	
			}
			if (reset_time_items_counter >= 3*room_speed && reset_time_items_collison_check == true ){
				point_minus_status = true;
				reset_time_items_counter = 0;
				reset_time_items_collison_check = false;
			}
	
	
		#endregion
		
		#region Heal_items_process
			if (heal_items_collison_check == true){
				heal_status = true;
				heal_itmes_counter++;
			}	
			
			if (heal_itmes_counter >= 3*room_speed && heal_items_collison_check == true ){
				heal_status = false;
				heal_items_collison_check = false;
				heal_itmes_counter = 0;
			}
		#endregion
		
#endregion

#region Sprite
	if (hit_box) sprite_index = s_player_hitbox;
	else sprite_index = s_player;

if (dash_fade == true){
		var obj = instance_create_depth(x,y,depth + 1,o_player_effect);
		obj.direction = image_angle;	
	}
	if (hsp != 0) image_xscale = sign(hsp);
#endregion
