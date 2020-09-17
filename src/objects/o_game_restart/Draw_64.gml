if (o_player.game_status == "Win" || o_player.game_status == "Loss"){
	draw_text(camera_get_view_width(o_camera.camera)/2,camera_get_view_height(o_camera.camera)/2,"You "  + o_player.game_status + "  Press Enter to try again");
	if (keyboard_check_pressed(vk_enter)) room_restart();
	game_restart_status = true;
}