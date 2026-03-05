// Inherit the parent event
event_inherited();


if(isSpawning == false){
	state = 1
}

switch state{
	case 1:
		if(distance_to_object(objPlayer) > 250 ){
			state = 2
		}else{
			if(moveState){
				direction += irandom_range(-90,90)
				image_angle = direction
				speed = 1
				alarm_set(1, irandom_range(30,60))
				moveState = false
}
		}
		break
	case 2:
		instance_destroy()
	
}