/// @desc Variable stuff

player_move = true;
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
dash_counter = 0;
dash_time = 0.3*room_speed;

//Point variable
point = 0;
point_max = 5;
point_min = -10.125;

add_point = 1.25;

point_counter = 0;
point_minus_status = true;
game_status = "playing";


//items:
reset_time_items_collison_check = false;
reset_time_items_counter = 0;

stop_point_counter = 0;
stop_point_items_collison_check = false;

heal_items_collison_check = false;
heal_status = false;
heal_itmes_counter = 0;
heal_point = 2;