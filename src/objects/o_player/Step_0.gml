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
switch (state) {
	case player_state.normal:{
		
		#region Movement 8 dir
			hsp = (right - left)*walkspeed;
			x += hsp;
			vsp = (down - up)*walkspeed;
			y += vsp;
		#endregion
		
		#region Switch
			if (dash) state = player_state.dash;
		#endregion
		
		break;
	}
	
	case player_state.dash:{
		
		#region Dash
			if (dash_timer >0 ){
					//Dash process
					if (right - left != 0) x += dash_speed*(right - left);
					else x += dash_speed*image_xscale;
					if (down - up != 0) y += dash_speed*(down- up);
					
					dash_fade = true;
					dash_timer--;
			}
		#endregion	
					
		#region Switch state

		else if (dash_timer <= 0){
						dash_timer =  30;
						state = player_state.normal;
						dash_fade = false;
		}		
		#endregion
		
		break;
	}
}
#endregion 

#region Point

//Always minus point after 0.25 second
point_counter++;
if (point_counter >= 0.25*room_speed && point_minus_status == true){
	point -= 0.25;
	point_counter = 0;
}
	show_debug_message(point);

#region Stop_point_items_pocess (stop_times_items (point))
	if (stop_point_items_collison_check == true){
			point_minus_status = false;
			stop_point_counter++;
	}

	if (stop_point_counter>= 3*room_speed && stop_point_items_collison_check== true){
		point_minus_status = true;
		stop_point_counter= 0;
		stop_point_items_collison_check = false;
	}

#endregion

//Point result
//if (point >= 3.5){
//	show_debug_message("Win");
//	game_end();
//}
//if (point <= -10){
//	show_debug_message("Loss");
//	game_end();
//}
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