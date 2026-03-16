if(!isDisaspearing){
	self.depth = objGame.depth + 1
	playerNearby = collision_circle(x, y, 32, objPlayer, false, true)

	if(playerNearby){
		if (button == noone || !instance_exists(button)) {
			button = instance_create_depth(x, y - sprite_yoffset - 16, -100, objFButton)
			button.image_alpha = 0.7
		}
	}else{
		if(button != noone && instance_exists(button)){
			instance_destroy(button)
			button = noone
		}
	}

	if(keyboard_check_pressed(ord("F")) && distance_to_object(objPlayer) <= 32){
		objGame.heldGun = other.weaponType	
		
		var snd = choose(pickup1, pickup2)
		var inst = audio_play_sound(snd, 1, false)
		audio_sound_pitch(inst, random_range(0.9, 1.1))
		
		instance_destroy()
		instance_destroy(button)
	}
}