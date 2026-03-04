if(canShoot == true){
	switch objGame.heldGun{
		case 0:
			var shotBullet = instance_create_layer(objPlayer.x, objPlayer.y, "Instances", objBulletDef)
			shotBullet.playersBullet = true
			shotBullet.direction = objPlayer.image_angle
			shootCooldown = 85
			canShoot = false
			alarm_set(0, shootCooldown)

	}
}