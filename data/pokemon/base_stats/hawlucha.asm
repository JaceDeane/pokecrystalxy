	db HAWLUCHA ; 063

	db  78,  92,  75, 118,  74,  63
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, FLYING ; type
	db 100 ; catch rate
	db 175 ; base exp
	db KINGS_ROCK, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/hawlucha/front.dimensions"
	db 0, 0, 0, 0 ; padding
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ROLLOUT, TOXIC, ROCK_SMASH, STONE_EDGE, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, RAIN_DANCE, ENDURE, FRUSTRATION, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, ROCK_SLIDE, THUNDERPUNCH, DETECT, REST, ATTRACT, THUNDERPUNCH, CUT, FLY, STRENGTH
	; end
