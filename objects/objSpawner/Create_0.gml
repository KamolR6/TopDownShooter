
	do{
	pos_x = irandom(room_width)
	pos_y = irandom(room_height)
	}
		until(!collision_circle(pos_x, pos_y, 128, objCollisionBox, true, 1))
		{
			
			instance_create_layer(random(room_width), random(room_height), "Instances", objPlayer)
		}

alarm_set(0,30)