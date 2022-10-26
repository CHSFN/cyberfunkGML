/// @description Insert description here
// You can write your code in this editor

repeat(abs(velv))
{
if (!place_meeting(x, y +sign(velv), obj_block))
{
	y +=sign(velv)
}
else{
	velv = 0
}
}

repeat(abs(velh)){
	if (!place_meeting(x + sign(velh), y, obj_block)){
		x += sign(velh)
	}
	else{
		velh = 0
	}
}


