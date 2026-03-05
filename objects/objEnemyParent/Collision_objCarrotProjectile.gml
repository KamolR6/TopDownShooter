
if(!isSpawning){
	if(other.image_index == 0 || other.image_index == 2){
		if(!invulnerability){
			enemyHealhtPoints -= other.dmg
			image_blend = c_red
			alarm_set(0,5)
		}
	}
}