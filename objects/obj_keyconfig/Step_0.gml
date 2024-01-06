scr_iniinput();
scr_getinput()

if (col < 255)
	col += 0.25;
else
	col = 0;

live_auto_call

var move = key_down2 - key_up2

if (move != 0 and !editing)
{
	sel += move 
	sel = clamp(sel, 0, array_length(keys) - 1)
}

visualy = lerp(visualy, sel * ypad, 0.1)
texty = lerp(texty, sel * ypad, 0.1)

var select = keys[sel]
if (wait_buffer > 0)
	wait_buffer--
if (key_jump and !editing && wait_buffer <= 0)
{
	if (!editing)
	{
		editing = true
		wait_buffer = 5
	}

}

ini_open("Data.ini")
if (editing)
{
	
		
	if (keyboard_check_pressed(vk_anykey) && wait_buffer <= 0)
	{
		ini_write_real("Input", keys[sel], keyboard_key)
		wait_buffer = 5;
		editing = false;
	}
}
ini_close()

if (keyboard_check_pressed(ord("X")))
{
	instance_destroy();
	if (instance_exists(obj_pause))
	{
		with (obj_pause)
		{
			pause = true
			active = true
		}
	
	}
}
