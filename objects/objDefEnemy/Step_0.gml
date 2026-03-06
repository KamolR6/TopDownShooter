// Inherit the parent event
event_inherited();

//place of collision
var enemyCol = instance_place(x, y, objEnemyParent)
if(enemyCol != noone){
	//distance beetwen enemies
	var dist_x = x - enemyCol.x
	var dist_y = y - enemyCol.y
			
	var dist = point_distance(x, y, enemyCol.x, enemyCol.y)
	var min_dist = sprite_width/2 + enemyCol.sprite_width/2 
			
	//push enemies only if they overlap
	if(dist < min_dist && dist != 0){
		var push_strength = (min_dist - dist) * 0.2  
		x += dist_x / dist * push_strength
		y += dist_y / dist * push_strength
	}
}	


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

if(!isSpawning){
	if distance_to_object(objPlayer) < 150 {
		state = 2

   }else{
		state = 1
   }
}

if (state == 2 && prev_state != 2)
{
if (global.targetF_limit > global.targetF_sounds)
{
    var s = audio_play_sound(sndTargetFound1, 0, false);
    audio_sound_gain(s, 0.6, 0);
    audio_sound_pitch(s, random_range(0.95, 1.05));
    
    global.targetF_sounds += 1;

    alarm[3] = 60 * 0.3;
	}
}

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
		player_dir = point_direction(x,y, objPlayer.x, objPlayer.y)
		image_angle = player_dir
		direction = player_dir
		speed = 1
		break
	
}