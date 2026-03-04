if(!returning && distance_to_object(owner) > 200){
	returning = true
}

if(returning){
	direction = point_direction(x, y, owner.x, owner.y);
}

if (place_meeting(x, y, owner)&& returning) {
	instance_destroy();
	objGame.canShoot=true
}