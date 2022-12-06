# TempleTiler
🖽 TempleTiler is a window tiling utility for TempleOS inspired by [darwintiler](https://github.com/simply-jos/darwintiler)

![Tiling window example showing 2 windows in a 2x2 grid pattern. One window on the right hand side takes up 2 vertical squares, the other window in the bottom left corner takes up only one square, leaving one square in the upper left blank showing the background behind the windows](https://bielsa.me/assets/image/temple-os/temple-tiler.png)

## Installing
1. Copy all the HolyC files into a folder on your TempleOS PC
2. Adam include `TempleTiler.HC` in your Terminal

```
Adam("#include \"C:/Home/TempleTiler/TempleTiler.HC\"");
```

## Usage

| Action              | Hotkey          |
| ------------------- | --------------- |
| Top left corner     | `ctrl + alt + T`|
| Top                 | `ctrl + alt + Y`|
| Top right corner    | `ctrl + alt + U`|
| Left                | `ctrl + alt + G`|
| Middle              | `ctrl + alt + H`|
| Right               | `ctrl + alt + J`|
| Bottom left corner  | `ctrl + alt + B`|
| Bottom              | `ctrl + alt + N`|
| Bottom right corner | `ctrl + alt + M`|

## Configuring
1. Edit `TempleTiler.HC`
2. Modify the values of the `HK_*` macros (**Note**: TempleOS requires the hotkey characters to be alpha characters A-Z)
3. Adam include `TempleTiler.HC` (A reboot may be required, your old hotkeys may still be active)
