/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);

var move = key_right - key_left;

hsp = move * walksp;
vsp += grv;

if (place_meeting(x, y + 1, obj_wall)) && (key_jump){
	vsp = -7
}


// Horizontal collision
if (place_meeting(x + hsp, y, obj_wall)){
	while (!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

// Vertical collision
if (place_meeting(x, y + vsp, obj_wall)){
	while (!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;
