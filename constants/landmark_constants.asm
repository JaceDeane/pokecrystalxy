; Landmarks indexes (see data/maps/landmarks.asm)
	const_def

; Kalos landmarks
	const LANDMARK_SPECIAL             ; 00
	const LANDMARK_VANIVILLE_TOWN      ; 01
	const LANDMARK_ROUTE_1             ; 02
	const LANDMARK_AQUACORDE_TOWN      ; 03
	const LANDMARK_ROUTE_2             ; 04
	const LANDMARK_SANTALUNE_FOREST    ; 05
	const LANDMARK_ROUTE_3
	const LANDMARK_SANTALUNE_CITY      ; 06
	const LANDMARK_ROUTE_22            ; 07
	const LANDMARK_CHAMBER_OF_EMPTINESS; 08
	const LANDMARK_ROUTE_4             ; 09
	const LANDMARK_LUMIOSE_CITY        ; 0a
	const LANDMARK_ROUTE_5             ; 0b
	const LANDMARK_CAMPHRIER_TOWN      ; 0c
	const LANDMARK_ROUTE_6             ; 0d
	const LANDMARK_PARFUM_PALACE       ; 0e
	const LANDMARK_ROUTE_7             ; 0f
	const LANDMARK_BERRY_FIELDS        ; 10
	const LANDMARK_CONNECTING_CAVE     ; 11
	const LANDMARK_ROUTE_8             ; 12
	const LANDMARK_AMBRETTE_TOWN       ; 13
	const LANDMARK_ROUTE_9             ; 14
	const LANDMARK_GLITTERING_CAVE     ; 15
	const LANDMARK_CYLLAGE_CITY        ; 16
	const LANDMARK_ROUTE_10            ; 17
	const LANDMARK_GEOSENGE_TOWN       ; 18
	const LANDMARK_ROUTE_11            ; 19
	const LANDMARK_REFLECTION_CAVE     ; 1a
	const LANDMARK_SHALOUR_CITY        ; 1b
	const LANDMARK_TOWER_OF_MASTERY    ; 1c
	const LANDMARK_ROUTE_12            ; 1d
	const LANDMARK_AZURE_BAY           ; 1e
	const LANDMARK_SEA_SPIRITS_DEN     ; 1f
	const LANDMARK_COUMARINE_CITY      ; 20
	const LANDMARK_ROUTE_13            ; 21
	const LANDMARK_KALOS_POWER_PLANT   ; 22
	const LANDMARK_ROUTE_14            ; 23
	const LANDMARK_LAVERRE_CITY        ; 24
	const LANDMARK_POKE_BALL_FACTORY   ; 25
	const LANDMARK_ROUTE_15            ; 26
	const LANDMARK_LOST_HOTEL          ; 27
	const LANDMARK_ROUTE_16            ; 28
	const LANDMARK_DENDEMILLE_TOWN     ; 29
	const LANDMARK_FROST_CAVERN        ; 2a
	const LANDMARK_ROUTE_17            ; 2b
	const LANDMARK_ANISTAR_CITY        ; 2c
	const LANDMARK_ROUTE_18            ; 2d
	const LANDMARK_TERMINUS_CAVE       ; 2e
	const LANDMARK_COURIWAY_TOWN       ; 2f
	const LANDMARK_ROUTE_19            ; 30
	const LANDMARK_SNOWBELLE_CITY      ; 31
	const LANDMARK_ROUTE_20            ; 32
	const LANDMARK_POKEMON_VILLAGE     ; 33
	const LANDMARK_ROUTE_21            ; 34
	const LANDMARK_VICTORY_ROAD        ; 35
	const LANDMARK_POKEMON_LEAGUE      ; 36
	const LANDMARK_KILOUDE_CITY        ; 37
	const LANDMARK_FRIEND_SAFARI       ; 38
	const LANDMARK_BATTLE_MAISON       ; 39
	
KANTO_LANDMARK EQU const_value
	const LANDMARK_PALLET_TOWN
	const LANDMARK_NATIONAL_PARK
	const LANDMARK_LAKE_OF_RAGE
	const LANDMARK_FAST_SHIP

; used in CaughtData
	const_def $7f, -1
	const LANDMARK_EVENT             ; $7f
	const LANDMARK_GIFT              ; $7e

; Regions
	const_def
	const KALOS_REGION ; 0
	const KANTO_REGION ; 1
NUM_REGIONS EQU const_value
