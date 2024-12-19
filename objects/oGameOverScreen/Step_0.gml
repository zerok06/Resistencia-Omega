


// animacion valores
alpha += alphaSpd

alpha = clamp(alpha, 0, 1)

var _esc = global.escape_key_press
var _enter = global.accept_key


if _esc {

	room_goto(Home)

} else  {

if _enter {

	room_restart()

}

}


if _esc {

	room_goto(Home)

}