live_auto_call

var xx = SCREEN_WIDTH / 2.1
var yy = SCREEN_HEIGHT / 2.2

var tvx = xx + 526
var tvy = yy - 223

draw_sprite_ext(spr_minitv_hud, -1, tvx, tvy, 1, 1, 0, c_white, alpha)

draw_set_font(global.collectfont)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
var str = ""
if (collectstate == 1)
	str = "+"
if (collectstate == 2)
	str = "-"
draw_text_color(tvx - 7, tvy, concat(str, floor(collect)), c_white, c_white, c_white, c_white, alpha)
draw_set_font(fnt_caption)