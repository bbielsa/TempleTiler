Cd(__DIR__);;
#include "Window";

U64 tile_flag_hotkeys[255];

U0 HandleTileHotkey(I64 scan_code)
{
  U64 ch;
  U64 index;
  U64 flag;

  ch = ScanCode2Char(scan_code);
  index = ch +64;
  flag = tile_flag_hotkeys[index];    
  
  TileWindow(, flag);    
}


U0 RegisterTileHotkey(U8 ch, U64 tile_flags)
{
  U64 index;
  
  index = ch;
  tile_flag_hotkeys[ch] = tile_flags;

  CtrlAltCBSet(ch, 
               &HandleTileHotkey,
               "",
               ""); 
}