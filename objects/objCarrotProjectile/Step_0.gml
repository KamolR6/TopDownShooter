if(instance_exists(owner)){
	if(objGame.heldGun == 2){
		if(image_index = 3){
			instance_destroy()
		}

		x = owner.x
		y = owner.y
		image_angle = owner.image_angle-90
	}else{
		instance_destroy()
	}
}else{
	instance_destroy()
}