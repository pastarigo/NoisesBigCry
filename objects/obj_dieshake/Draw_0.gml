live_auto_call

if (dieBuffer > 0)
	draw_sprite_ext(sprite_index, 0, x + irandom_range(shakemag, -shakemag), y + irandom_range(shakemag, -shakemag), image_xscale, image_yscale, 0, c_white, image_alpha)
else
	draw_sprite_ext(sprite_index, 0, x, y, image_xscale, image_yscale, 0, c_white, image_alpha)