// Inherit the parent event
event_inherited();

// --- ATTACKING SCRIPT ---
var dist = distance_to_object(objPlayer)

if (dist <= 8 && !cooldown) {
	if (sprite_index != sprEnemyAttack) {
		sprite_index = sprEnemyAttack
		image_index = 0
	}

	if (!cooldown && image_index == 3) {
		objGame.healthPoints -= dmg
		cooldown = true
		alarm_set(2,irandom_range(8,16))
		with (objPlayer) {
			image_blend = c_red
			alarm[0] = 30
		}
	}
}else{
		sprite_index = sprEnemy
}


// --- SCOUTING SCRIPT ---
if(!isSpawning){
	if distance_to_object(objPlayer) < 150 {
		state = 2

   }else{
		state = 1
   }
}

// --- SOUND HANDLER ---
if (state == 2 && prev_state != 2)
{
	if (global.targetF_limit > global.targetF_sounds)
	{
		var distS = point_distance(x, y, objPlayer.x, objPlayer.y);	
		var gain = clamp(1 - (distS / objPlayer.maxHDist), 0, 1);
	
		var s = audio_play_sound(sndTargetFound1, 0, false);
	
		audio_sound_gain(s, gain * 0.6, 0);
		audio_sound_pitch(s, random_range(0.95, 1.05));
    
		global.targetF_sounds += 1;

		alarm[3] = 60 * 0.3;
	}
}

// --- CHASE HANDLER ---
prev_state = state;

switch state{
	case 1:
			if moveState {
			direction += irandom_range(-90,90)
			image_angle = direction
			speed = 1
			alarm_set(1, irandom_range(30,60))
			moveState = false
        }
        break
	case 2:
		image_angle = point_direction(x,y,objPlayer.x,objPlayer.y)
		alarm_set(4,1)
		break
	
}