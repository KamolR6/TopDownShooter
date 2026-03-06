// Inherit the parent event
event_inherited();

if(room == r_InfiniteMode){
	objGame.playerScore  += 1
}

if (global.targetF_sounds > 0) {
    global.targetF_sounds -= 1;
}