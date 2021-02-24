	object_const_def

SantaluneForest_MapScripts:
	def_scene_scripts

	def_callbacks

SantaluneForestSign:
	jumptext SantaluneForestSignText

SantaluneForestSignText:
	text "SANTALUNE FOREST"
	
	para "Keep an eye out"
	line "for dropped items!"
	done

SantaluneForest_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16, 55, ROUTE_2_SANTALUNE_FOREST_GATE, 1
	warp_event 17, 55, ROUTE_2_SANTALUNE_FOREST_GATE, 2
	warp_event  2,  5, ROUTE_3, 1

	def_coord_events

	def_bg_events
	bg_event 16, 50, BGEVENT_READ, SantaluneForestSign

	def_object_events
