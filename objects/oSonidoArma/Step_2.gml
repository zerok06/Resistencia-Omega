

if _play and _soundInst != noone {

	var _sound = audio_play_sound(_soundInst, 8, false)
	audio_sound_gain(_sound, _vol, 0)
	_play = false
}



