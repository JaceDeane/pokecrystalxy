ChrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 3
	dw .MaleNames
	db 1 ; default option
	db 0 ; ????

.MaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 4 ; items
	db "NEW NAME@"
MalePlayerNameArray:
	db "CALEM@"
	db "XAVIER@"
	db "X@"
	db 2 ; displacement
	db " NAME @" ; title

KrisNameMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 0, 10, TEXTBOX_Y - 3
	dw .FemaleNames
	db 1 ; default option
	db 0 ; ????

.FemaleNames:
	db STATICMENU_CURSOR | STATICMENU_PLACE_TITLE | STATICMENU_DISABLE_B ; flags
	db 4 ; items
	db "NEW NAME@"
FemalePlayerNameArray:
	db "SERENA@"
	db "YVONNE@"
	db "Y@"
	db 2 ; title indent
	db " NAME @" ; title
