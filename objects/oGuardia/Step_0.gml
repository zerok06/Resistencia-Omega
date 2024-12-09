
if pause_screen() {exit}


// cambiar de estado

switch (state){

	case 0:
	if instance_exists(oPlayer){
		dir = point_direction(x, y, oPlayer.x, oPlayer.y)
	}
	
	// colocar la velocidad correcta
	spd = chaseSpd
	
	var _camLeft = camera_get_view_x(view_camera[0]);
	var _camRight = _camLeft + camera_get_view_width(view_camera[0]);
	var _camTop = camera_get_view_y(view_camera[0]);
	var _camBottom = _camTop + camera_get_view_height(view_camera[0]);
	
	
	if bbox_right > _camLeft && bbox_left <_camRight && bbox_bottom > _camTop && bbox_top < _camBottom {
		shootTimer++;
	}
	
	
	if shootTimer > cooldownTime {
	
		state = 1
		shootTimer = 0
	
	}
	
	
	
	
	break
	
	case 1:
	if instance_exists(oPlayer){
		dir = point_direction(x, y, oPlayer.x, oPlayer.y)
	}
	
	// colocar la velocidad correcta
	spd = 0
	image_index = 0
	
	
	shootTimer++
	
	if shootTimer == 1 {
	
		bulletInst = instance_create_depth(x + bulletXoff*face, y + bulletYoff, depth, oGuardiaBullet)
	
	}
	
	// cambiar orientacion de bala
	
	if shootTimer <= windupTime and instance_exists(bulletInst) {
	
		bulletInst.x = x + bulletXoff * face
		bulletInst.y = y + bulletYoff
  
	
	}
	
	
	if shootTimer == windupTime and instance_exists(bulletInst) {
	
		bulletInst.state = 1
		
	}
	
	if shootTimer > windupTime + recoverTime {
	
		state = 0
		
		shootTimer = 0
	
	}
	
	
	break

}











xspd = lengthdir_x(spd, dir)
yspd = lengthdir_y(spd, dir)

// cambiar perspectiva

if xspd > 0 { face = 1 }
if xspd < 0 { face = -1 }

if dir > 90 and dir < 270 {
	face = -1
}else {
	face = 1
}

image_xscale = face


// colisiones
if place_meeting(x + xspd, y, oWall) or place_meeting(x + xspd, y, oEnemyParent) {
	xspd = 0
}
if place_meeting(x, y + yspd, oWall) or place_meeting(x, y + yspd, oEnemyParent){
	yspd = 0
}


x += xspd
y += yspd






event_inherited()


