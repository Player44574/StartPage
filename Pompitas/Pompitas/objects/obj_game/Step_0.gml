//Display management
try{
	global.aspectRatio=window_get_width()/window_get_height();
	camera_set_view_size(view_camera[0],360*global.aspectRatio,360);
	surface_resize(application_surface,360*global.aspectRatio,360);
	display_set_gui_size(360*global.aspectRatio, 360);
	
	if global.aspectRatio>=1{
		global.displayRotation=0 //Horizontal
	}else{
		global.displayRotation=1 //Vertical
	}
	
	global.cw=camera_get_view_width(view_camera[0])
	global.ch=camera_get_view_height(view_camera[0])
	
	global.ww=window_get_width()
	global.wh=window_get_height()
}catch(E){}

//rescale for html exports
if os_browser{
	try{
		if (browser_width != width || browser_height != height){
			width = browser_width;
			height = browser_height;
			window_set_size(width, height);
		}
	}
}

//keys
global.bk[10] = keyboard_check_pressed(ord("E"))
global.bk[11] = keyboard_check_pressed(ord("R"))
global.bk[12] = keyboard_check_pressed(ord("T"))
global.bk[13] = keyboard_check_pressed(ord("Y"))

global.bk[20] = keyboard_check_pressed(ord("S"))
global.bk[21] = keyboard_check_pressed(ord("D"))
global.bk[22] = keyboard_check_pressed(ord("F"))
global.bk[23] = keyboard_check_pressed(ord("G"))
global.bk[24] = keyboard_check_pressed(ord("H"))

global.bk[30] = keyboard_check_pressed(ord("X"))
global.bk[31] = keyboard_check_pressed(ord("C"))
global.bk[32] = keyboard_check_pressed(ord("V"))
global.bk[33] = keyboard_check_pressed(ord("B"))

//create buttons
for (var i = 0; i < 4; i++) {
	var gb = instance_create_layer(0,0,layer,obj_button)
	with(gb){
		oid = 10 + i
	}
}
for (var i = 0; i < 5; i++) {
	var gb = instance_create_layer(0,0,layer,obj_button)
	with(gb){
		oid = 20 + i
	}
}
for (var i = 0; i < 4; i++) {
	var gb = instance_create_layer(0,0,layer,obj_button)
	with(gb){
		oid = 30 + i
	}
}