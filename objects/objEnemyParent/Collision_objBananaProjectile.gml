if(!isSpawning){
	if(!other.returning){
		x += other.hspeed;
		y += other.vspeed;
		if(instance_place(x,y,objCollisionBox)){
			enemyHealhtPoints -= 30
		}
		
	}


	if(!invulnerability){
		enemyHealhtPoints -= other.dmg 
		image_blend = c_red
		invulnerability = true
		alarm_set(0,5)
	}
}