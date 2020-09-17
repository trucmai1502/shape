// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Collison(){
if (place_meeting(x + hsp,y,o_wall))
	{
		while(!place_meeting(x + sign(hsp),y,o_wall))
			{
				x += sign(hsp);	
			}	
		hsp = 0;
	}	
	
		if (place_meeting(x, y + vsp,o_wall))
		{
			while(!place_meeting(x,y + sign(vsp),o_wall))
				{
					y += sign(vsp);	
				}	
			vsp = 0;
		}	
}