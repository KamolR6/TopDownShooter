function BananaShoot(attacker){
	if(objGame.canShoot){
		var projectile = instance_create_layer(attacker.x, attacker.y, "Instances", objBananaProjectile)
		projectile.owner = attacker
		projectile.direction = attacker.image_angle
	}
}