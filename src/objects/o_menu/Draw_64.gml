var i = 0;

repeat(buttons){
	draw_set_font(menu_font);
	draw_set_halign(fa_center);
	draw_set_color(c_gray);
	if (menu_index == i){
		draw_set_color(c_white);
	}
	draw_text(menu_x,menu_y  + bottom_h*i, button[i]);
	i++;
}
