// Inherit the parent event
event_inherited();

		//place of collision
		var inst = instance_place(x, y, objEnemyParent)
		if(inst != noone){
			//distance beetwen enemies
			var dist_x = x - inst.x
			var dist_y = y - inst.y
			
			var dist = point_distance(x, y, inst.x, inst.y)
			var min_dist = sprite_width/2 + inst.sprite_width/2 
			
			//push enemies only if they overlap
			if(dist < min_dist && dist != 0){
				var push_strength = (min_dist - dist) * 0.2  
				x += dist_x / dist * push_strength
				y += dist_y / dist * push_strength
			}
		}	


if(!isSpawning){
	if distance_to_object(objPlayer) < 150 {
		state = 2
   }else{
		state = 1
   }
}


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