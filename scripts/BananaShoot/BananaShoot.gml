function BananaShoot(shooter){
	if(objGame.canShoot){
		var shotBanana = instance_create_layer(shooter.x, shooter.y, "Instances", objBananaProjectile)
		shotBanana.owner = shooter
		shotBanana.direction = shooter.image_angle
	}
}