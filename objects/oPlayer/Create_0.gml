// confuguracion de dano
get_damaged_create(1, true)

/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
move_dir = 0
move_spd = 2

xspd = 0
yspd = 0



// control de sprites

centerYoffset = -5
centerY = y + centerYoffset

weaponOffsetDist = 5


aimDir = 0


face = 3
//sprite[0] = sprite_alexia_right_stop
sprite[0] = sprite_alexia_right_run
//sprite[2] = sprite_alexia_left_stop
sprite[1] = sprite_alexia_up_run
sprite[2] = sprite_alexia_left_run
//sprite[4] = sprite_alexia_up_stop
sprite[3] = sprite_alexia_right_run

sprite_index = sprite[face]

array_push(global.PlayerWeapons, global.WeaponList.bazuca)
array_push(global.PlayerWeapons, global.WeaponList.electrica)
array_push(global.PlayerWeapons, global.WeaponList.escopeta)
array_push(global.PlayerWeapons, global.WeaponList.pistola)
array_push(global.PlayerWeapons, global.WeaponList.rifleautomatica)
array_push(global.PlayerWeapons, global.WeaponList.rifleriel)



selectedWeapon = 2

weapon = global.PlayerWeapons[selectedWeapon]


// informacion de arma
shootTimer = 0

