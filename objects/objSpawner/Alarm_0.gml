
alarm_set(0, irandom_range(30,90))
var enemiesNum = instance_number(objEnemyParent)

//randomly checks for place to spawn enemy

if(enemiesNum < 10){
	var pos_x
	var pos_y
	do{
	pos_x = irandom(room_width)
	pos_y = irandom(room_height)
	}
		until(!collision_circle(pos_x, pos_y, 128, all, true, 1))
		{
			instance_create_layer(pos_x, pos_y, "Instances", objDefEnemySmart)
		}

}