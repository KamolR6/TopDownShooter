if (room_get_name != "r_Menu") {
	// dont overheal player
  if (healthPoints > 100) {
    healthPoints = 100
  }

  // kill player
  if (healthPoints <= 0) {
    with(objPlayer) {
      instance_destroy() repeat(20) {
        effect_create_depth(-100, ef_explosion, irandom_range(x - 30, x + 30),
                            irandom_range(y - 30, y + 30), 2, c_white)
      }
	  alarm_set(0,30)
    }
  }

  // might be problematic later on (sorry future me)
  if (shootCooldown > 0 || shootCooldown <= -1) {
    shootCooldown-- canShoot = false
  } else {
    canShoot = true
  }
}