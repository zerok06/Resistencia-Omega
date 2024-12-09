
var _camW = camera_get_view_width(view_camera[0])
var _camH = camera_get_view_height(view_camera[0])

if instance_exists(oPlayer) {

	x = oPlayer.x  - _camW/2
	y = oPlayer.centerY - _camH/2

}

if global.press_mouse_right {

	xShakeAmount = 100
	yShakeAmount = 100

}


if xShakeAmount > 0 {

	xShakeDir += xShakeDirSpd
	xShakeAmount -= xShakeAmountSpd

} else {

	xShakeAmount = 0
	xShakeDir = 0

}

xShake = dsin(xShakeDir) * xShakeAmount

if yShakeAmount > 0 {

	yShakeDir += yShakeDirSpd
	yShakeAmount -= yShakeAmountSpd

} else {

	yShakeAmount = 0
	yShakeDir = 0

}
yShake = dsin(yShakeDir) * yShakeAmount



x += xShake
y += yShake



x = clamp(x, 0, room_width - _camW)
y = clamp(y, 0, room_height - _camH)


camera_set_view_pos(view_camera[0], x, y)

