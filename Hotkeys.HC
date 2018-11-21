Cd(__DIR__);;
#include "Window";

U64 tile_flag_hotkeys[80];

U0 HandleTileHotkey(I64 scan_code)
{

  U64 ch;
  U64 index;
  U64 flag;

  ch = ScanCode2Char(scan_code);
  //index = ToUpper(ch
  index = ch;

  if (index >= 26)
    return;

  flag = tile_flag_hotkeys[index];
  
  TileWindow(, flag);    
}


U0 RegisterTileHotkey(U8 ch, U64 tile_flags)
{
  U64 index = ToUpper(ch) - 'A';
  "Registering Tile Hotkey idx:%d, flag:%llu\n", index, tile_flags;
  tile_flag_hotkeys[index] = tile_flags;

  CtrlAltCBSet(ch, 
               &HandleTileHotkey,
               "Cmd /Tile On",
               "Cmd /Tile Off"); 
}