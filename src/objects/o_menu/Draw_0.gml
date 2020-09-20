/// @description Draw stuff

//Black surface
if (!surface_exists(lighting_surface)){
	lighting_surface = surface_create(room_width,room_height);
}
surface_set_target(lighting_surface);
draw_clear_alpha(c_black,0.8);
surface_reset_target();
draw_surface(lighting_surface,0,0);

