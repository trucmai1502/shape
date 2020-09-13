/// @desc Variable stuff

//Move 8-dir
hsp = 0;
vsp = 0;
walkspeed = 5;

//Dash
enum player_state{
	normal,
	dash
}
state = player_state.normal

dash_fade = false;
dash_speed = walkspeed*3;
dash_timer = 30;

//Point variable
point = 0;
point_counter = 0;
stop_point_counter = 0;
stop_point_items_collison_check = false;
point_minus_status = true;