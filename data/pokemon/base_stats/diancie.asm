	db DIANCIE ; 063

	db  50, 100, 150,  50, 100, 150
	;   hp  atk  def  spd  sat  sdf

	db ROCK, FAIRY ; type
	db 3 ; catch rate
	db 255 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 50 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/diancie/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROLLOUT, TOXIC, ZAP_CANNON, STONE_EDGE, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, PROTECT, ENDURE, FRUSTRATION, RETURN, PSYCHIC_M, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SANDSTORM, ROCK_SLIDE, DETECT, REST, ATTRACT, DAZZLINGLEAM, FLASH
	; end
