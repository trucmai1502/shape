/// @desc Set up camera
follow = o_player;
camera = view_camera[0];

xTo = xstart;
yTo = ystart;

view_w_half = camera_get_view_width(camera)/2;
view_h_half = camera_get_view_height(camera)/2;

//Shake 
shake_length = 0;
shake_remain = 0;
shake_magnutied = 0;