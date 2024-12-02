
xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)

x += xspd
y += yspd


//confirmacion de eliminacion
if hitConfirm == true and enemyDestroy == true {
	destroy = true
}


// colision

if destroy == true{
	instance_destroy()  
}

if place_meeting(x + xspd, y, oWall){
	destroy = true
}


if point_distance(xstart, ystart, x, y) > max_distance{
	destroy = true
}




