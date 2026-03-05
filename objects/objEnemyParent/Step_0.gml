if(isSpawning){
	image_alpha += 0.01
	
	if(image_alpha >= 1){
		image_alpha = 1
		isSpawning = false
	}
}

if(enemyHealhtPoints <= 0){
	instance_destroy()
}