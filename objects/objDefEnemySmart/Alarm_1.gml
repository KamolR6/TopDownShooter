//Alarm for enemy to walk randomly

var lottery = irandom_range(1,3)
sum = 0


if(lottery == 1 && sum != 3){
	sum++
	speed = 0
	alarm_set(1, irandom_range(25,45))
}else{
	sum = 0
	moveState = true
}