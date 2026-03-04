if(objBulletDef.playersBullet == false){
	with(other){
		image_blend = c_red
		alarm_set( 1, 15)
	}
	objGame.healthPoints -= dmg
	instance_destroy()
}