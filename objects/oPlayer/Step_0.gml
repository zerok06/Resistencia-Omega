// configuracion inicial
#region
// obtener eventos de teclado

var press_right = global.press_right
var press_left = global.press_left
var press_up = global.press_up
var press_down = global.press_down

// obtener eventos de mouse

var press_mouse_left = global.press_mouse_left

//cambiar arma

var press_mouse_right = global.press_mouse_right

//
var escape_press = global.escape_key_press

// menu de pausa
if escape_press {

	if !instance_exists(oPauseMenu) {
		instance_create_depth(0,0,0, oPauseMenu)
	} else {
		instance_destroy(oPauseMenu)
	}

}


// pausar personahe

if pause_screen() { exit }


// movimiento de jugador

var  horiz_key = press_right - press_left
var  verti_key = press_down - press_up

move_dir = point_direction(0, 0, horiz_key, verti_key)



// obtener la velocidades de x, y
var _spd = 0
var _input_level = point_distance(0, 0, horiz_key, verti_key)
//solucion de ir rapido en diagonal
_input_level = clamp(_input_level, 0 ,1)
_spd = _input_level * move_spd

xspd = lengthdir_x(_spd, move_dir)
yspd = lengthdir_y(_spd, move_dir)


//colision con "wall" o pared

if place_meeting(x + xspd, y ,oWall){
	xspd = 0
}


if place_meeting(x, y + yspd ,oWall){
	yspd = 0
}


// profundidad 
depth = -bbox_bottom


x += xspd
y += yspd

#endregion

// punteria de jugador
#region
centerY = y + centerYoffset
aimDir = point_direction(x,centerY, mouse_x, mouse_y)

#endregion

// obtener dano


if get_damaged(oDamagePlayer, true) {
	create_screen_pause(20)
	screen_shake(10)
}

if selectedWeapon != -1 {

	weapon = global.PlayerWeapons[selectedWeapon]

}


// configuracion de sprites
#region


	face = round(aimDir/90)
	if face == 4 {face=0}
	sprite_index = sprite[face]
	
	// resetear aniamcion
	if xspd == 0 && yspd==0{
		image_index = 0
	}


#endregion

#region


var _playerWeapons = global.PlayerWeapons
if press_mouse_right {

	selectedWeapon++
	if selectedWeapon >= array_length(_playerWeapons) { selectedWeapon = 0 }

}


#endregion


// Dispara balas
if weapon != noone {
if shootTimer > 0 {
	shootTimer--
}

if press_mouse_left && shootTimer <= 0 {

	shootTimer = weapon.cooldown
	screen_shake(10)

	
	var xOffset = lengthdir_x(weapon.length, aimDir)
	var yOffset = lengthdir_y(weapon.length, aimDir)

	var _spread = weapon.spread
	var _spreadDiv = _spread / max(weapon.bulletNum - 1, 1)
	
	
	// generacion de multipleas balas
	
	for (var i=0; i< weapon.bulletNum ;i++){
		var _bala = instance_create_depth(x + xOffset ,  centerY + yOffset,  depth - 100, weapon.bulletObj)
	
		with(_bala){
			dir = other.aimDir - _spread/2 + _spreadDiv * i
		}
	
	}
		screen_shake(10)

	
	
}
}
if hp <= 0 {
	
	//agregar la pesnatan de gameover
	instance_create_depth(0,0,-10000, oGameOverScreen)
	
	instance_destroy()
	exit
	
}