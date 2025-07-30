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

//debug
if global.debug=1 and keyboard_check_pressed(vk_enter){
    pattern=choose(1,2,3,4,5,6,7,8,9,10)
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

if pattern=-1{
    global.button[10] = choose(0,1)
    global.button[11] = choose(0,1)
    global.button[12] = choose(0,1)
    global.button[13] = choose(0,1)
    
    global.button[20] = choose(0,1)
    global.button[21] = choose(0,1)
    global.button[22] = choose(0,1)
    global.button[23] = choose(0,1)
    global.button[24] = choose(0,1)
    
    global.button[30] = choose(0,1)
    global.button[31] = choose(0,1)
    global.button[32] = choose(0,1)
    global.button[33] = choose(0,1)
}
else if pattern=0{
    global.button[10] = 0
    global.button[11] = 0
    global.button[12] = 0
    global.button[13] = 0
    
    global.button[20] = 0
    global.button[21] = 0
    global.button[22] = 0
    global.button[23] = 0
    global.button[24] = 0
    
    global.button[30] = 0
    global.button[31] = 0
    global.button[32] = 0
    global.button[33] = 0
}
else if pattern=1{
    global.button[10] = 1
    global.button[11] = 1
    global.button[12] = 0
    global.button[13] = 0
    
    global.button[20] = 0
    global.button[21] = 1
    global.button[22] = 1
    global.button[23] = 0
    global.button[24] = 0
    
    global.button[30] = 0
    global.button[31] = 0
    global.button[32] = 1
    global.button[33] = 1
}
else if pattern=2{
    global.button[10] = 1
    global.button[11] = 0
    global.button[12] = 0
    global.button[13] = 1
    
    global.button[20] = 1
    global.button[21] = 0
    global.button[22] = 0
    global.button[23] = 0
    global.button[24] = 1
    
    global.button[30] = 1
    global.button[31] = 1
    global.button[32] = 1
    global.button[33] = 1
}
else if pattern=3{
    global.button[10] = 1
    global.button[11] = 1
    global.button[12] = 1
    global.button[13] = 1
    
    global.button[20] = 1
    global.button[21] = 0
    global.button[22] = 0
    global.button[23] = 0
    global.button[24] = 1
    
    global.button[30] = 1
    global.button[31] = 1
    global.button[32] = 1
    global.button[33] = 1
}
else if pattern=4{
    global.button[10] = 1
    global.button[11] = 0
    global.button[12] = 0
    global.button[13] = 0
    
    global.button[20] = 0
    global.button[21] = 1
    global.button[22] = 1
    global.button[23] = 1
    global.button[24] = 0
    
    global.button[30] = 0
    global.button[31] = 0
    global.button[32] = 0
    global.button[33] = 1
}
else if pattern=5{
    global.button[10] = 0
    global.button[11] = 1
    global.button[12] = 1
    global.button[13] = 0
    
    global.button[20] = 1
    global.button[21] = 0
    global.button[22] = 1
    global.button[23] = 0
    global.button[24] = 1
    
    global.button[30] = 0
    global.button[31] = 1
    global.button[32] = 1
    global.button[33] = 0
}
else if pattern=6{
    global.button[10] = 1
    global.button[11] = 0
    global.button[12] = 1
    global.button[13] = 0
    
    global.button[20] = 0
    global.button[21] = 1
    global.button[22] = 0
    global.button[23] = 1
    global.button[24] = 0
    
    global.button[30] = 1
    global.button[31] = 0
    global.button[32] = 1
    global.button[33] = 0
}
else if pattern=7{
    global.button[10] = 1
    global.button[11] = 0
    global.button[12] = 0
    global.button[13] = 1
    
    global.button[20] = 1
    global.button[21] = 0
    global.button[22] = 1
    global.button[23] = 0
    global.button[24] = 1
    
    global.button[30] = 1
    global.button[31] = 0
    global.button[32] = 0
    global.button[33] = 1
}
else if pattern=8{
    global.button[10] = 1
    global.button[11] = 1
    global.button[12] = 1
    global.button[13] = 1
    
    global.button[20] = 0
    global.button[21] = 1
    global.button[22] = 1
    global.button[23] = 1
    global.button[24] = 0
    
    global.button[30] = 1
    global.button[31] = 0
    global.button[32] = 0
    global.button[33] = 0
}
else if pattern=9{
    global.button[10] = 1
    global.button[11] = 1
    global.button[12] = 1
    global.button[13] = 0
    
    global.button[20] = 0
    global.button[21] = 0
    global.button[22] = 1
    global.button[23] = 0
    global.button[24] = 0
    
    global.button[30] = 0
    global.button[31] = 1
    global.button[32] = 1
    global.button[33] = 1
}
else if pattern=10{
    global.button[10] = 0
    global.button[11] = 1
    global.button[12] = 1
    global.button[13] = 0
    
    global.button[20] = 1
    global.button[21] = 1
    global.button[22] = 1
    global.button[23] = 1
    global.button[24] = 1
    
    global.button[30] = 1
    global.button[31] = 0
    global.button[32] = 0
    global.button[33] = 1
}