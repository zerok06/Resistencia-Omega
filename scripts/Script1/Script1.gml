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
draw_sprite_ext(weapon.sprite, 0 , x + _xoffset, centerY + _yoffset,1,_armaYscl,aimDir, c_white,image_alpha)

}
	
	
function get_damaged (_damageEnemy, _iframes = false){

if _iframes == true and iframeTimer > 0 {
	iframeTimer--
	
	if iframeTimer mod 5 == 0 {
		if image_alpha == 1{
			image_alpha = 0
		}else {
			image_alpha = 1
		}
	}
	
	exit
}


if _iframes == true {
	image_alpha = 1
}

if place_meeting(x,y, _damageEnemy){


	
	// obtener una lista de danos
	
	var _instlist = ds_list_create()
	
	instance_place_list(x, y, _damageEnemy, _instlist, false)
	
	var _listsize = ds_list_size(_instlist)
	var _hitConfirm = false
	
	for (var i = 0 ; i < _listsize; i ++){
		
		var _inst = ds_list_find_value(_instlist, i)
		
		if  _iframes == true or ds_list_find_index(damageList, _inst) == -1 {
			if _iframes == false {
				ds_list_add(damageList, _inst)
			}
			
			hp -= _inst.damage
			_hitConfirm = true
			_inst.hitConfirm = true
		}
		
	}
	
	
	if _iframes == true and _hitConfirm {
		iframeTimer = iframeNumber
	}
	
	
	
	ds_list_destroy(_instlist)
	
	
	
	
	
}



if _iframes == false {
var _damageListSize = ds_list_size(damageList)

for (var i = 0; i < _damageListSize; i++){
	var _inst  = ds_list_find_value(damageList, i)
	if !instance_exists(_inst) or !place_meeting(x, y, _inst){
		ds_list_delete(damageList, i)
		i--
		_damageListSize--
	}
}



}

//hp = clamp(hp, 0, maxHp)


}

function get_damaged_create (_hp = 10, _iframes = false){
	
	maxHp = _hp
	
	hp = _hp
	
	if _iframes == true {
		iframeTimer = 0
		iframeNumber = 90
	}
	if _iframes == false {
		damageList = ds_list_create()
	}
}

function get_damage_clean(){
	ds_list_destroy(damageList)
}

