live_auto_call

if (unlocked)
	event_inherited();
else
{
	var done = false
	with (other)
	{
		if (key_up2 && grounded && global.key = true && (state == states.normal || state == states.slide || state == states.mach) && (state != states.actor || state != states.comingoutdoor))
		{
			x = other.x + -other.image_xscale * -48
			ds_list_add(global.saveroom, other.id);
			global.key = false;
			with (instance_create(other.x, other.y, obj_dieshake))
			{
				visible = true;
				sprite_index = spr_key;
				image_index = 0;
				dieBuffer = 20;
			}
			state = states.actor;
			sprite_index = spr_player_victory;
			image_index = 0;
			hsp = 0;
			vsp = 0;
		}
	
		if (floor(image_index) == (image_number - 1) && sprite_index == spr_player_victory)
		{
			other.unlocked = true;
			targetRoom = other.targetRoom;
			targetDoor = other.targetDoor;
			state = states.door;
			isdoor = true;
		

			if (!instance_exists(obj_fadeout))
				instance_create(0, 0, obj_fadeout);
		}
	}
}