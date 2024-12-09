
if weapon != noone {

	if aimDir >= 0 && aimDir < 180{
		draw_my_weapon()
	}

	// dibujar jugador
	draw_self()


	if aimDir >= 180 && aimDir < 360{
		draw_my_weapon()
	}

}else {
	// dibujar jugador
	draw_self()
}




draw_text(x,y, string(hp))
