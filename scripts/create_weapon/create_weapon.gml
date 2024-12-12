function create_weapon(_damage=1,_weapon, _cooldown=1, _bullet, _soundInst= noone, _bulletNum= 1, _spread = 0) constructor{
	sprite = _weapon
	length= sprite_get_bbox_right(_weapon) - sprite_get_xoffset(_weapon);
	bulletObj = _bullet 
	cooldown = _cooldown
	bulletNum = _bulletNum
	spread = _spread
	sound = _soundInst
	damage = _damage
}


global.PlayerWeapons = array_create(0)




global.WeaponList = {
	pistola: new create_weapon(1, sPistola, 15, oBalaPistola, sndPistola),
	escopeta: new create_weapon(1, sEscopeta, 25, oBalaEscopeta,sndEscopeta, 10, 45),
	electrica: new create_weapon(4,sElectrica, 100, oBalaElectrica, sndElectrica),
	rifleriel: new create_weapon(8, sRifleRiel, 15, oBalaRifleRiel, sndRifleRiel),
	rifleautomatica: new create_weapon(2, sRifleAutomatica, 5, oBalaRifleAutomatica, sndRifleAutomatico),
	bazuca: new create_weapon(8, sBazuca, 100, oBalaBazuca, sndBazuca),
}