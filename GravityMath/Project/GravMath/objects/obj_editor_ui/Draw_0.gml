//draw UI
if global.displayRotation=0{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,96,global.ch,false)
	draw_rectangle(global.cw-128,0,global.cw,global.ch,false)
	
	//drawTime
	minutes=floor(time/3600)
	seconds=floor(time/60)-minutes*60
	
	if minutes < 10 {
		minutes = "0"+string(minutes)
	}else{
		minutes = string(minutes)
	}
	
	if seconds < 10 {
		seconds = "0"+string(seconds)
	}else{
		seconds = string(seconds)
	}
	
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(48,global.ch/2,minutes+":"+seconds)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_sprite_ext(spr_time,0,48,global.ch/2-64,0.75,0.75,0,c_white,1)
	
	//draw pause button
	if draw_custom_button(5,8,spr_pause_button,""){if global.finish=0{global.pause=1}}
	
	//draw finish button
	if draw_custom_button(5,global.ch-8-88,spr_button_next,""){if global.pause=0 and global.finish=0{global.finish=1 alarm[0]=60}}
	
}else{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,global.cw,96,false)
	draw_rectangle(0,global.ch-128,global.cw,global.ch,false)
	
	//drawTime
	minutes=floor(time/3600)
	seconds=floor(time/60)-minutes*60
	
	if minutes < 10 {
		minutes = "0"+string(minutes)
	}else{
		minutes = string(minutes)
	}
	
	if seconds < 10 {
		seconds = "0"+string(seconds)
	}else{
		seconds = string(seconds)
	}
	
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(global.cw/2,72,minutes+":"+seconds)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_sprite_ext(spr_time,0,global.cw/2,32,0.75,0.75,0,c_white,1)
	
	//draw pause button
	if draw_custom_button(8,8,spr_pause_button,""){if global.finish=0{global.pause=1}}
	
	//draw finish button
	if draw_custom_button(global.cw-8-88,8,spr_button_next,""){if global.pause=0 and global.finish=0{global.finish=1 alarm[0]=60}}
}