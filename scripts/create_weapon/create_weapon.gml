function create_weapon(_weapon, _cooldown=1, _bullet, _bulletNum= 1, _spread = 0) constructor{
	sprite = _weapon
	length= sprite_get_bbox_right(_weapon) - sprite_get_xoffset(_weapon);
	bulletObj = _bullet 
	cooldown = _cooldown
	bulletNum = _bulletNum
	spread = _spread
}


global.PlayerWeapons = array_create(0)




global.WeaponList = {
	pistola: new create_weapon(sPistola, 3, oBalaPistola),
	escopeta: new create_weapon(sEscopeta, 5, oBalaEscopeta, 10, 45),
	electrica: new create_weapon(sElectrica, 7, oBalaElectrica),
	rifleriel: new create_weapon(sRifleRiel, 10, oBalaRifleRiel),
	rifleautomatica: new create_weapon(sRifleAutomatica, 4, oBalaRifleAutomatica),
	bazuca: new create_weapon(sBazuca, 40, oBalaBazuca),
}