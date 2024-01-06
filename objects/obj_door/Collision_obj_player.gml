live_auto_call

var player = obj_player.id

if (player.key_up2 && player.grounded && (player.state == states.normal || player.state == states.slide || player.state == states.mach) && (player.state != states.door || player.state != states.comingoutdoor || player.state != states.actor))
{
	player.targetRoom = targetRoom;
	player.targetDoor = targetDoor;
	player.state = states.door;
	player.sprite_index = spr_player_lookdoor;
	player.image_index = 0;
	player.isdoor = true;
	player.x = lerp(player.x, x - 16 * sign(-image_xscale), 0.05)

	if (!instance_exists(obj_fadeout))
		instance_create(0, 0, obj_fadeout);
}