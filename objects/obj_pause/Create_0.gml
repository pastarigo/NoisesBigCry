live_auto_call

function pause_pause()
{
	instance_deactivate_all(true)
	instance_activate_object(obj_screensizer)
	instance_activate_object(obj_keyconfig)
}

key_pause = keyboard_check_pressed(vk_escape);

things = ["Resume", "Restart", "Key Config", "Exit"]
sel = 0;
pause = false;
active = false;
alpha = 0;