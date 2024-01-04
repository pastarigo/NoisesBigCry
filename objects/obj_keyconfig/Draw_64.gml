live_auto_call

draw_set_alpha(1);
draw_rectangle_color(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT, c_black, c_black, c_black, c_black, 0);
for (var i = 0; i < array_length(keys); i++)
{
	
	var kkk = keys[i]
	var c = c_gray;
	
	if (sel == i)
		c = c_white;
	

	ini_open("Data.ini")
	var pp = ini_read_real("Input", kkk, -4)
	
	
	ini_close()
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_color(SCREEN_WIDTH / 3.5, SCREEN_HEIGHT / 2.2 + ypad * i - (array_length(keys) * 15) - texty, string_upper(keysname[i]), c, c, c, c, 1);
	draw_set_halign(fa_right);
	draw_set_valign(fa_middle);
	draw_text_color(SCREEN_WIDTH / 1.5, SCREEN_HEIGHT / 2.2 + ypad * i - (array_length(keys) * 15) - texty, scr_keyname(pp), c, c, c, c, 1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	
	if (editing)
		draw_text_color(SCREEN_WIDTH / 2.1, SCREEN_HEIGHT / 1.3, "Editing Key...", c_white, c_white, c_white, c_white, 1);

}