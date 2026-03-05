function CarrotAttack(attacker){
	if(objGame.canShoot){
		var projectile = instance_create_layer(attacker.x, attacker.y, "Instances", objCarrotProjectile)
		projectile.image_xscale = 0.4
		projectile.image_yscale = 0.4
		projectile.owner = attacker
		objGame.shootCooldown = 15
	}
}