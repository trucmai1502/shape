// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
with (o_camera){
	function Shake(){
		if (argument0 > shake_remain){
				shake_magnutied= argument0;
				shake_remain = argument0;
				shake_length = argument1;
		}
	}
}