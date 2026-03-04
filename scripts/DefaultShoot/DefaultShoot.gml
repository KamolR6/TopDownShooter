function DefaultShoot(shooter, players){
	if(objGame.canShoot){
		var shotBullet = instance_create_layer(shooter.x, shooter.y, "Instances", objDefaultProjectile)
		shotBullet.direction = shooter.image_angle
		shotBullet.owner = shooter
		shotBullet.shotByPlayer = 
		shotBullet.startX = shooter.x;
		shotBullet.startY = shooter.y;
		objGame.shootCooldown = 40
	}
}