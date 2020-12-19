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
	warp_event 16, 47, ROUTE_2, 1
	warp_event 17, 47, ROUTE_2, 2

	def_coord_events

	def_bg_events
	bg_event 16, 42, BGEVENT_READ, SantaluneForestSign

	def_object_events
