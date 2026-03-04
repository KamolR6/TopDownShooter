if(distance_to_object(owner) > 200){
	image_alpha -= 0.1
	if(dmg > 1){
		dmg -= 0.1
	}
}
if(image_alpha <= 0){
	instance_destroy()
	objGame.canShoot = true
}