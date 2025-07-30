oid=0
pressed=0
image_speed=0
image_index=global.color
image_xscale=64/352
image_yscale=64/352

x = global.cw/2 - 128 + ((oid - floor(oid/10)*10)*64) - ((floor(oid/10)*10) % 2)
y = global.ch/2 - 96 + floor(oid/10)*64