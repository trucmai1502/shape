/// @desc Debug
draw_set_color(c_white);
draw_text(20,20,o_player.point);
draw_set_color(c_red);
if (o_player.point < 0) draw_set_color(c_red);
else draw_set_color(c_lime);
draw_rectangle(x + 4, y + 4, x + 123*o_player.point/o_player.point_max, y + 15,false);