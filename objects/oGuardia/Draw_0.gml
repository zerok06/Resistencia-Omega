event_inherited()


var _healthPercent = hp / maxHp
var _hpImage = _healthPercent * maxHp - 1

draw_sprite(sHealth, _hpImage, x, y - sprite_height - 5)