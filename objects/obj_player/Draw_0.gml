live_auto_call;

draw_sprite_ext(sprite_index, -1, x, y, image_xscale * xscale, image_yscale * yscale, image_angle, image_blend, image_alpha);


draw_set_halign(fa_center)
draw_set_valign(fa_top)
draw_text(x - 95, y - 50, concat("movespeed: ", movespeed));
draw_text(x + 85, y - 50, concat("collect: ", global.collect));
if (global.debughud)
{
	draw_text(x, y - 95, concat("state: ", string(state)));
}

draw_set_halign(fa_center)
draw_set_valign(fa_middle)

key_alpha = Approach(key_alpha, global.key, 0.1)

if (key_alpha > 0)
	draw_sprite_ext(spr_key, -1, keyX, keyY, 1, 1, 0, c_white, key_alpha)