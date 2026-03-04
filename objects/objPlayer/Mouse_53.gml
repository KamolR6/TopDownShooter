if(objGame.canShoot == true){
	switch objGame.heldGun{
		case 0:
			DefaultShoot(objPlayer, true)
			break
		case 1:
			BananaShoot(objPlayer)
			break
	}
}