# bash-gui-resizer
Super simple script using Zenity to resize images on Linux

## Requirements
Requires:
* zenity - most distros have it; on ubuntu / debian, install it with `sudo apt  install zenity`
* ImageMagick - again, usually installed by default; if not, try `sudo apt install imagemagick`. We're only using the `convert` tool from this package.
  
## Operation
Run the script (you may need to make it executable with `chmod u+x`). It will pop up with a file dialog where you can select multiple image files. Press enter or OK, then it will present a slider for you to chose the % scale factor.

## Issues
The first parameter is the folder to start in. This is currently ignored and it starts in $PWD .
