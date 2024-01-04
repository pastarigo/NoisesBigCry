live_auto_call

if (keyboard_check_pressed(vk_escape))
{
	pause = true
	active = true
}

if (pause or active)
	pause_pause()
	
if (active)
	alpha = Approach(alpha, 1, 0.1)
else
	alpha = Approach(alpha, 0, 0.1)
scr_iniinput();
scr_getinput();

var move = key_down2 - key_up2

if (move != 0 && (pause and active))
{
	sel += move 
	
	if (sel > array_length(things) - 1)
		sel = 0
	if (sel < 0)
		sel = array_length(things) - 1
}

if (key_jump and (pause and active))
{

	switch sel
	{
		case 0:
			instance_activate_all()
			pause = false 
			active = false
			break
		case 1:
			game_restart();
			break 
		case 2:
			with (instance_create(0, 0, obj_keyconfig))
				wait_buffer = 15;
			active = false
			break;
		case 3:
			game_end()
			break;

	}

}