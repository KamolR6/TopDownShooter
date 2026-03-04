if(!invulnerability){
	x += lengthdir_x(2, other.direction);
	y += lengthdir_y(2, other.direction);

	enemyHealhtPoints -= other.dmg
	image_blend = c_red
	invulnerability = true
	alarm_set(0,5)
	with(other){
		instance_destroy()
	}
}