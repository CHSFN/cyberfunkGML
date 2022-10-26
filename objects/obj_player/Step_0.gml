/// @description Insert description here
// You can write your code in this editor
chao = (place_meeting(x, y + 1, obj_block));
var left, right, jump, run, jump_s, tiro, tiro_s;

left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
jump = keyboard_check_pressed(vk_space);
run = keyboard_check(vk_shift);
jump_s = keyboard_check_released(vk_space);
tiro = keyboard_check_pressed(ord("Z"));
tiro_s = keyboard_check_pressed(ord("Z"));




if (run)
{
	var velocidade = vel_usainbolt;
}
else
{
	var velocidade = max_velh;
}


velh = (right - left) * velocidade;

if (velh != 0)
{
image_xscale = sign(velh);
fiatuno = spr_player_walk;
}
else
{
fiatuno = spr_player;
}

if (velh = 0) fiatuno = spr_player_stay;

if (chao)
{
if (jump) velv = -max_velv;
}
else{velv  += grav;

if (jump_s){
	if (velv < 0){
		velv = velv * .5;
	}
}
}

if (velh > 0) face = 0;
if (velh < 0) face = 1;

if (tiro)
{
var t = instance_create_layer(x, y, layer, obj_attack);
fiatuno = spr_player_right_shoot;
t.speed = 1.5;
t.direction = 180 * face;	
	if (face = 1){
		with (obj_attack){
			image_xscale = -1;
		}
	}
}


sprite_index = fiatuno;