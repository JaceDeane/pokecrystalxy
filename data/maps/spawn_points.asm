spawn: MACRO
; map, x, y
	map_id \1
	db \2, \3
ENDM

SpawnPoints:
; entries correspond to SPAWN_* constants

	spawn PLAYERS_HOUSE_2F,            3,  3 ; home
	spawn PLAYERS_HOUSE_2F,            3,  3 ; debug
	;spawn VIRIDIAN_POKECENTER_1F,      5,  3 ; debug

	;spawn PALLET_TOWN,                 5,  6

	spawn N_A,                        -1, -1
