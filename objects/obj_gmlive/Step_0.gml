live_update();

if (keyboard_check_pressed(vk_f6))
{
	if (instance_exists(obj_gmlive))
	{
		LIVEROOM;
		trace("made ", room_get_name(room), " live!")
	}
	else
		trace("whats is wrong with gmlive?")
}