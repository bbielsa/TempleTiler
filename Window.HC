
#define TILE_POS_MASK	15
#define TILE_POS_TOP	0b1000
#define TILE_POS_BOTTOM	0b1100
#define TILE_POS_LEFT	0b0010
#define TILE_POS_RIGHT	0b0011
#define TILE_POS_MIDDLE	0b0000

#define TILE_POS_HORZ_MASK 	0b0011
#define TILE_POS_VERT_MASK	0b1100

#define GAP 2

#define SCREEN_WIDTH	80
#define SCREEN_HEIGHT	60


class Tile 
{
  I64 left;
  I64 top;
  I64 bottom;
  I64 right;
};

U0 TileFromFlags(Tile *tile, U64 flags)
{
  U64 tile_pos = flags & TILE_POS_MASK;

  I64 left;
  I64 top;
  I64 width;
  I64 height;

  left = 0;
  top = 0;
  width = 0;
  height = 0;

  if (tile_pos & TILE_POS_HORZ_MASK == TILE_POS_RIGHT ||
      tile_pos &TILE_POS_HORZ_MASK == TILE_POS_LEFT)
  {
    width = SCREEN_WIDTH / 2;
  }
  else
  {
    width = SCREEN_WIDTH;
  }
  

  if (tile_pos & TILE_POS_VERT_MASK == TILE_POS_BOTTOM ||
      tile_pos & TILE_POS_VERT_MASK == TILE_POS_TOP)
  {
    height = SCREEN_HEIGHT / 2;
  }
  else 
  {
    height = SCREEN_HEIGHT;
  }

  if (tile_pos & TILE_POS_HORZ_MASK == TILE_POS_RIGHT)
  {
    left = SCREEN_WIDTH / 2;
  }

  if (tile_pos & TILE_POS_VERT_MASK== TILE_POS_BOTTOM)
  {
    top = SCREEN_HEIGHT / 2;
  }

  tile->left = left;
  tile->top = top;
  tile->right = left +width;
  tile->bottom = top +height;
}

U0 TaskApplyTile(CTask *task, Tile *tile)
{
  I64 left = tile->left;
  I64 top = tile->top;
  I64 right = tile->right - 1;
  I64 bottom = tile->bottom - 1;

  WinHorz(left, right, task);
  WinVert(top, bottom, task);
}

U0 TileApplyGap(Tile *tile, U64 gap, U8 status_bar_gap = 1)
{
  if (status_bar_gap)
  {
    tile->top += 1;
  }

  tile->left	+= gap;
  tile->top	+= gap;
  tile->right	-= gap;
  tile->bottom	-= gap;
}

U0 DebugTilePrint(Tile *tile)
{
  "X: %llu\nY: %llu\nW: %llu\nH: %llu\n", 
    tile->left,
    tile->top,
    tile->right - tile->left,
    tile->bottom - tile->top;
}

U0 TileWindow(CTask *task = NULL, U64 tile_flags)
{
  if (task == NULL)
    task = sys_focus_task;

  Tile *t = CAlloc(sizeof(Tile));

  TileFromFlags(t, tile_flags);
  TileApplyGap(t, GAP);

  TaskApplyTile(task, t);

  Free(t);
}
