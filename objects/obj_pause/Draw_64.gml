live_auto_call

if (pause or active)
{
	var ypad = 42
	draw_set_alpha(alpha)
	draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, c_black, c_black, c_black, c_black, 0)
	
	for (var i = 0; i < array_length(things); i++)
	{
		draw_set_halign(fa_center)
		draw_set_valign(fa_top)
		var c = c_gray
		
		if (sel == i)
			c = c_white
		draw_text_colour(SCREEN_WIDTH / 2.05, SCREEN_HEIGHT / 2.4 + ypad * i, things[i], c, c, c, c, alpha)
	}
}