if (active && other.state != states.cock && !global.cock)
{
	jumpBuffer = 35;
	with (other)
	{
		global.cock = true;
		state = states.cock;
		movespeed = movespeed / 2;
		vsp = -4;
		hsp = 0;
	}
}