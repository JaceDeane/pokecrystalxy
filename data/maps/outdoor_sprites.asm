; Valid sprite IDs for each map group.
; Maps with environment ROUTE or TOWN can only use these sprites.

OutdoorSprites:
; entries correspond to map groups
	dw VanivilleGroupSprites
	dw AquacordeGroupSprites
	dw SantaluneGroupSprites
	dw LumioseGroupSprites

; Route 1 and Aquacorde are connected
VanivilleGroupSprites:
; Vaniville, Route 1
AquacordeGroupSprites:
; Aquacorde, Route 2
SantaluneGroupSprites:
; Route 3, Santalune, Route 4, Route 22
LumioseGroupSprites:
; Lumiose
	;db SPRITE_RIVAL ; variable sprite
	db SPRITE_SILVER
	db SPRITE_TEACHER
	db SPRITE_FISHER
	db SPRITE_COOLTRAINER_M
	db SPRITE_YOUNGSTER
	db SPRITE_BIRD
	db SPRITE_TWIN
	db SPRITE_BUG_CATCHER
	db SPRITE_COOLTRAINER_F
	; max 9 of 9 walking sprites
	db SPRITE_POKE_BALL
	db SPRITE_FRUIT_TREE
	db 0 ; end
	