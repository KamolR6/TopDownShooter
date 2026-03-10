function EnemyPathing(gridID ,owner, alarmID, alarmCD, targetX, targetY){
	
	path_delete(owner.path)
	path = path_add()
	
	//use grid to navigate to target
	mp_grid_path(gridID, path, owner.x,owner.y, targetX, targetY, 1)
	
	path_start(path, owner.speed, path_action_stop, true)
	
	alarm_set(alarmID, alarmCD)
}