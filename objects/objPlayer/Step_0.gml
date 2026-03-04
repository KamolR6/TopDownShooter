lookDir = point_direction(x,y,mouse_x,mouse_y)
image_angle = lookDir

if (instance_place(x + hspeed, y, objCollisionBox)) {
    
    var dir = sign(hspeed);
    
    while (!instance_place(x + dir, y, objCollisionBox)) {
        x += dir;
    }
    
    hspeed = 0;
}

if (instance_place(x, y + vspeed, objCollisionBox)) {
    
    var dir = sign(vspeed);
    
    while (!instance_place(x, y + dir, objCollisionBox)) {
        y += dir;
    }
    
    vspeed = 0;
}


speed = min(speed,playerSpeed)