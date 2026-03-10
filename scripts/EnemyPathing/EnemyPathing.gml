function EnemyPathing(gridID ,owner, alarmID, alarmCD, targetX, targetY){
	
	if (path_exists(owner.path)) {
		path_delete(owner.path)
	}
	owner.path = path_add()
	
	//use grid to navigate to target
	mp_grid_path(gridID, path, owner.x,owner.y, targetX, targetY, 1)
	
	path_start(path, owner.speedVal, path_action_stop, true)
	if(owner.state == 2){
		alarm_set(alarmID, alarmCD)
	}else{
		if(path_exists(owner.path)){
			path_delete(owner.path)
		}
		owner.state = 1
	}
}