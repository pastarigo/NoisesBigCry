live_auto_call

hsp = image_xscale * movespeed;

x += hsp

if (movespeed > -6)
	movespeed -= 0.25

	
if (place_meeting(x, y, obj_destroyable))
{
	with (instance_place(x + hsp, y, obj_destroyable))
		instance_destroy()
}

if (movespeed <= -2)
{
	x = lerp(x, obj_player.x, 0.1 * movespeed)
	y = lerp(y, obj_player.y, 0.1)
}	
