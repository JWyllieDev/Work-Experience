// player movement controls
// sprite facing angle
speed = 0
if (keyboard_check(vk_right)) image_angle = image_angle - 12; // 12 degrees every frame... 30 frames per rotation. two rotations a second.
if (keyboard_check(vk_left)) image_angle = image_angle + 12;

if (keyboard_check(ord("D"))){
	direction = 0
	speed = 8
}
if (keyboard_check(ord("A"))){
	direction = 180
	speed = 8
}
if (keyboard_check(ord("S"))){
	direction = 270
	speed = 8
}

if (keyboard_check(ord("W"))){
	direction = 90
	speed = 8
}
if (keyboard_check(ord("W"))) && (keyboard_check(ord("A"))){
	direction = 135
	speed = 8
}
if (keyboard_check(ord("W"))) && (keyboard_check(ord("D"))){
	direction = 45
	speed = 8
}
if (keyboard_check(ord("S"))) && (keyboard_check(ord("A"))){
	direction = 225
	speed = 8
}
if (keyboard_check(ord("S"))) && (keyboard_check(ord("D"))){
	direction = 314
	speed = 8
}

//shooting
if(keyboard_check(vk_space)) && (cooldown < 1){
	instance_create_layer(x,y,"layerProjectiles",objBullet)
	audio_play_sound(sndFire,0,0)
	cooldown = 4; // 60fps. 4 frames between bullets, 15 bullets a second.
}
cooldown = cooldown - 1;

//HACK restart
if (keyboard_check(vk_control)) && (keyboard_check(ord("R"))) game_restart();