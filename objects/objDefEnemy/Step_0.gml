// Inherit the parent event
event_inherited();


if(!isSpawning){
	state = 1
}

if state == 1 {
    if distance_to_object(objPlayer) < 250 {
        state = 2
    }
}

switch state{
	case 2:
		image_angle = point_direction(x,y, objPlayer.x, objPlayer.y)
		speed = 1
		break
	
}