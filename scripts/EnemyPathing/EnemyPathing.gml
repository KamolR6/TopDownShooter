function EnemyPathing(gridID ,owner, alarmID, alarmCD, targetX, targetY){
	
	if(owner.state == 1){
		if(owner.path_index != -1 && owner.path_position < 1){
			return
		}
		if(path_exists(owner.path)){
			path_delete(owner.path)
		}
		return
	}
	
	owner.path = path_add()
	
	//use grid to navigate to target
	mp_grid_path(gridID, owner.path, owner.x,owner.y, targetX, targetY, 1)
	
	path_start(owner.path, owner.speedVal, path_action_stop, true)
	if(owner.state == 2){
		alarm_set(alarmID, alarmCD)
	}
}