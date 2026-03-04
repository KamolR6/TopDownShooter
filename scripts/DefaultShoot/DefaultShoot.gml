function DefaultShoot(shooter, players = false){
	if(objGame.canShoot){
		var shotBullet = instance_create_layer(shooter.x, shooter.y, "Instances", objDefaultProjectile)
		shotBullet.direction = shooter.image_angle
		shotBullet.owner = shooter
		shotBullet.playersBullet = players
	}
}