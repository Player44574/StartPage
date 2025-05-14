//draw UI
draw_set_halign(fa_center)
draw_set_valign(fa_center)
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_text(global.cw/2+2,global.ch/2-224+2,"GravMath")
draw_set_color(c_white)
draw_set_alpha(1)
draw_text(global.cw/2,global.ch/2-224,"GravMath")
draw_set_halign(fa_left)
draw_set_valign(fa_top)

if draw_custom_button(global.cw/2-176,global.ch/2-64-44,spr_play_button_wide,global.TXTPlay){
	instance_destroy()
	if global.howToPlay=0{
		instance_create_layer(0,0,layer,obj_level_and_ui)
	}else{
		instance_create_layer(0,0,layer,obj_level_and_ui)
	}
}

if draw_custom_button(global.cw/2-176,global.ch/2+4,spr_settings_button_wide,global.TXTSettings){
	instance_destroy()
	instance_create_layer(0,0,layer,obj_settings_object)
}

draw_set_font(fn_default_mini)
draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
draw_set_color(c_black)
draw_set_alpha(0.5)
draw_text(global.cw-8+2,global.ch-8+2,"JPro404")
draw_set_color(c_white)
draw_set_alpha(1)
draw_text(global.cw-8,global.ch-8,"JPro404")
draw_set_halign(fa_left)
draw_set_valign(fa_top)
draw_set_font(fn_default)