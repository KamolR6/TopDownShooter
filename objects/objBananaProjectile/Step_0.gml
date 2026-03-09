if(instance_exists(owner)){
	if(objGame.heldGun == 1){
	image_angle -= 15


	if(!returning && (point_distance(startX, startY, x, y) > flyRange)){
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
}else{
	instance_destroy()
}