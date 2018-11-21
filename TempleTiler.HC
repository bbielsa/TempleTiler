$IV,0$Cd(__DIR__);;
#include "Window";
#include "Hotkeys";

#define HK_TOP_LEFT	'U'
#define HK_TOP		'I'
#define HK_TOP_RIGHT	'O'
#define HK_LEFT		'J'
#define HK_MIDDLE	'K'
#define HK_RIGHT	'L'
#define HK_BOTTOM_LEFT	'M'
#define HK_BOTTOM	','
#define HK_BOTTOM_RIGHT	'.'
$IV,0$
RegisterTileHotkey(HK_TOP_LEFT	,$IV,1$$IV,0$ $IV,0$TILE_POS_TOP |TILE_POS_LEFT);$IV,0$
RegisterTileHotkey(HK_TOP	, $IV,0$TILE_POS_TOP);
RegisterTileHotkey(HK_TOP_RIGHT	, TILE_POS_TOP | TILE_POS_RIGHT);
RegisterTileHotkey(HK_LEFT	, TILE_POS_LEFT);
RegisterTileHotkey(HK_MIDDLE	, TILE_POS_MIDDLE);
$IV,1$$IV,0$RegisterTileHotkey(HK_RIGHT	, TILE_POS_RIGHT);
RegisterTileHotkey(HK_BOTTOM_LEFT, TILE_POS_BOTTOM |TILE_POS_LEFT);
//RegisterTileHotkey(HK_BOTTOM	, TILE_POS_BOTTOM);
$IV,0$$IV,0$$IV,0$//RegisterTileHotkey(HK_BOTTOM_RIGHT, TILE_POS_BOTTOM | TILE_POS_RIGHT);

$IV,1$$UL,1$