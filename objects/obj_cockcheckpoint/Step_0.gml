var player = obj_player.id
if (jumpBuffer > 0 && player.state != states.cock)
{
	jumpBuffer--
	visible = false;
}
else
{
	visible = true
	active = true
}