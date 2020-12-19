	db VOLCANION ; 063

	db  80, 110, 120,  70, 130,  90
	;   hp  atk  def  spd  sat  sdf

	db WATER, FIRE ; type
	db 3 ; catch rate
	db 255 ; base exp
	db RAGECANDYBAR, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 50 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/volcanion/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROAR, TOXIC, ROCK_SMASH, STONE_EDGE, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, SOLARBEAM, EARTHQUAKE, RETURN, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, SANDSTORM, FIRE_BLAST, ROCK_SLIDE, DETECT, REST, ATTRACT, CUT, SURF, STRENGTH, FLAMETHROWER
	; end
