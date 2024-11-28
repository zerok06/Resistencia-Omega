// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_my_weapon(){
//solucion de sprite de arma volteada

var _xoffset = lengthdir_x(weaponOffsetDist, aimDir)
var _yoffset = lengthdir_y(weaponOffsetDist, aimDir)



var _armaYscl = 1
if aimDir > 90 && aimDir <270{
	_armaYscl = -1
}

	
//dibujar arma
draw_sprite_ext(sMiniGun, 0 , x + _xoffset, centerY + _yoffset,1,_armaYscl,aimDir, c_white,1)

}