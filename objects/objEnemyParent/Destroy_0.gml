lottery = irandom_range(1,1)
if(lottery == 1){
	var weaponNum = irandom_range(2,2)
	var weapon = noone
	if(!collision_circle(x, y, 32, objWeaponParent, true, 1)){
	switch weaponNum{
		case 1:
			weapon = instance_create_layer(x, y, "Instances", objBananaWeapon)
			break
		case 2:
			weapon = instance_create_layer(x, y, "Instances", objWeaponCarrot)
	}
		weapon.image_xscale = 0.25
		weapon.image_yscale = 0.25
	}
}