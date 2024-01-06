live_update();

if (keyboard_check_pressed(vk_f6))
{
		LIVEROOM;
		trace("made ", room_get_name(room), " live!")
}

if (keyboard_check_pressed(vk_f7))
{
	if (instance_exists(obj_player))
	{
		sprite_set_live(obj_player.sprite_index, true);
		trace("made ", obj_player.sprite_index, " live!")
	}
}