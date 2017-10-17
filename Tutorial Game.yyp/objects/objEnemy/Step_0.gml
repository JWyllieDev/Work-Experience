if(instance_exists(objPlayer)){
	move_towards_point(objPlayer.x,objPlayer.y,spd)	
}

image_angle = direction;

if (hp <= 0){
	with(objScore) score = score + 3;
	audio_sound_pitch(sndDeath,random_range(0.8,1.2))
	audio_play_sound(sndDeath,0,0)
	instance_destroy();
}