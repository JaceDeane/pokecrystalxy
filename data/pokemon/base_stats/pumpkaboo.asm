	db PUMPKABOO ; 063

	db  54,  66,  70,  46,  44,  55
	;   hp  atk  def  spd  sat  sdf

	db GHOST, GRASS ; type
	db 120 ; catch rate
	db 67 ; base exp
	db MIRACLE_SEED, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/pumpkaboo/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_INDETERMINATE, EGG_INDETERMINATE ; egg groups

	; tm/hm learnset
	tmhm CURSE, ROLLOUT, TOXIC, ROCK_SMASH, HIDDEN_POWER, SUNNY_DAY, SWEET_SCENT, SNORE, PROTECT, GIGA_DRAIN, ENDURE, FRUSTRATION, SOLARBEAM, RETURN, PSYCHIC_M, SHADOW_BALL, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SLUDGE_BOMB, FIRE_BLAST, ROCK_SLIDE, DREAM_EATER, REST, ATTRACT, THIEF, NIGHTMARE, FLASH, FLAMETHROWER
	; end
