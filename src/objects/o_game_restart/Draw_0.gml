if (game_restart_status == true){
//Effect
	surface = surface_create(room_width,room_height);
	surface_set_target(surface);
	draw_clear_alpha(c_gray,0.9);
	surface_reset_target();
	draw_surface(surface,0,0);
}
