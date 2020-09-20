if (o_player.game_status == "Win" || o_player.game_status == "Loss"){
	if (o_player.point < 0) draw_set_color(c_red);
	else draw_set_color(c_lime);
	draw_text(camera_get_view_width(o_camera.camera)/2 ,camera_get_view_height(o_camera.camera)/2 - 40,"You "  + o_player.game_status);
	instance_create_layer(camera_get_view_width(o_camera.camera)/2 ,camera_get_view_height(o_camera.camera)/2 + 40,"GUI",o_menu);
	if (keyboard_check_pressed(vk_enter)) room_restart();
	game_restart_status = true;
}