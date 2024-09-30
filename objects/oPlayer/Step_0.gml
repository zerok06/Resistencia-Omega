// obtener eventos de teclado

var press_right = keyboard_check(ord("D"))
var press_left = keyboard_check(ord("A"))
var press_up = keyboard_check(ord("W"))
var press_down = keyboard_check(ord("S"))


// movimiento de jugador

var  horiz_key = press_right - press_left
var  verti_key = press_down - press_up

move_dir = point_direction(0, 0, horiz_key, verti_key)

show_debug_message(move_dir)


// obtener la velocidades de x, y
var _spd = 0
var _input_level = point_distance(0, 0, horiz_key, verti_key)
//solucion de ir rapido en diagonal
_input_level = clamp(_input_level, 0 ,1)
_spd = _input_level * move_spd

xspd = lengthdir_x(_spd, move_dir)
yspd = lengthdir_y(_spd, move_dir)


// colision con "wall" o pared

if place_meeting(x + xspd, y ,oWall){
	xspd = 0
}


if place_meeting(x, y + yspd ,oWall){
	yspd = 0
}


x += xspd
y += yspd


