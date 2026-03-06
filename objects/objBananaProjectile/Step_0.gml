if(instance_exists(owner)){

image_angle -= 15


if(!returning && (point_distance(startX, startY, x, y) > 200)){
	returning = true
}

if(returning){
	direction = point_direction(x, y, owner.x, owner.y);
}

	if (place_meeting(x, y, owner)&& returning) {
		instance_destroy();
		objGame.shootCooldown=0
	}
}else{
	instance_destroy()
}