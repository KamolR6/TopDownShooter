function DefaultShoot(attacker, isPlayers){
	if(objGame.canShoot){
		var projectile = instance_create_layer(attacker.x, attacker.y, "Instances", objDefaultProjectile)
		projectile.direction = attacker.image_angle
		projectile.owner = attacker
		projectile.shotByPlayer = isPlayers
		projectile.startX = attacker.x;
		projectile.startY = attacker.y;
		objGame.shootCooldown = 20
	}
}