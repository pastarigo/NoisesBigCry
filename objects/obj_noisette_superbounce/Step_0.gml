live_auto_call

event_inherited();

switch state 
{
	case 1:
		player.x = floor(x)
		
		player.state = states.actor
		
		if (player.sprite_index != spr_player_glidejumpstart)
		{
			player.image_index = 0;
			player.sprite_index = spr_player_glidejumpstart;
		}
		
		if (floor(player.image_index) == (player.image_number - 1))
			state = 2;
		break;
	case 2:
		player.state = states.onlyup;
		player.vsp = 0;
		player.hsp = 0;
		player.movespeed = 0;
		player.grounded = false;
		
		state = 0;
		break;
}