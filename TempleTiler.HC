$IV,0$Cd(__DIR__);;
#include "Window";
#include "Hotkeys";

#define HK_TOP_LEFT	'T'
#define HK_TOP		'Y'
#define HK_TOP_RIGHT	'U'
#define HK_LEFT		'G'
#define HK_MIDDLE	'H'
#define HK_RIGHT	'J'
#define HK_BOTTOM_LEFT	'B'
#define HK_BOTTOM	'N'
#define HK_BOTTOM_RIGHT	'M'
$IV,0$

RegisterTileHotkey(HK_TOP_LEFT$IV,1$$IV,1$$IV,1$$IV,1$	,$IV,1$$IV,0$ $IV,0$TILE_POS_TOP |TILE_POS_LEFT);$IV,0$
RegisterTileHotkey(HK_TOP	, $IV,0$TILE_POS_TOP);
RegisterTileHotkey(HK_TOP_RIGHT	, TILE_POS_TOP | TILE_POS_RIGHT);
RegisterTileHotkey(HK_LEFT	, TILE_POS_LEFT);
RegisterTileHotkey(HK_MIDDLE	, TILE_POS_MIDDLE);
RegisterTileHotkey(HK_RIGHT	, TILE_POS_RIGHT);
RegisterTileHotkey(HK_BOTTOM_LEFT, TILE_POS_BOTTOM |TILE_POS_LEFT);
RegisterTileHotkey(HK_BOTTOM	, TILE_POS_BOTTOM);
$IV,0$RegisterTileHotkey(HK_BOTTOM_RIGHT, TILE_POS_BOTTOM | TILE_POS_RIGHT);