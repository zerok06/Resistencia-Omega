// dibujar jugador
draw_self()


//solucion de sprite de arma volteada

var _armaYscl = 1
if aimDir > 90 && aimDir <270{
	_armaYscl = -1
}

	
//dibujar arma
draw_sprite_ext(sMiniGun, 0 , x, centerY,1,_armaYscl,aimDir, c_white,1)