x = global.cw/2 - 128 + ((oid - floor(oid/10)*10)*64) + (floor(oid/10) % 2)*32
y = global.ch/2 - 96 + floor(oid/10)*64

if global.bk[oid]{
	pressed=1
	image_xscale=-64/352
	image_yscale=-64/352
}

if global.button[oid]=1{image_index=global.color+1}
else if global.button[oid]=0{image_index=global.color}



if keyboard_check_pressed(vk_enter){
	show_debug_message(((floor(oid/10)*10) % 2)*32)
}