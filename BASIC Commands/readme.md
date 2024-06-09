# This is the BASIC Command List description<br>

<br>

### RUN<br>
Executes the program currently stored in program memory.<br>

### <break>
Halts the program currently running.<br>

### LIST
Copies the current program to the screen.  Each program line must begin with a number, and program lines will be listed and executed in numerical order.  To delete a program line, type just its number at the flashing prompt and press <Enter>.<br>

### DIR
Lists a directory of files on the SD card.  Only shows those files in the root directory.<br>

### SAVE “name.bas”
Saves the program currently in program memory to the SD card, with the name and extension inside the quotes.<br>

### LOAD “name.bas”
Copies the program “name.bas” from the SD card to program memory.<br>

### DELETE “name.bas”
Deletes the file “name.bas” from the SD card.<br>

### NEW
Clears program memory; sets the 26 Color BASIC variables to 0.<br>

### HOLD
Saves the program currently in program memory to the SD card, with the name of DESKTOP.TMP.  Color BASIC and the editor are separate programs and pass this DESKTOP.TMP file back and forth to open and close the editor.<br>

### REBOOT
Reboots the CHIP Computer, just like pressing the reset button or interrupting power.  If there is a file named DESKTOP.TMP in the root directory of the SD card, loads and runs that file.  Otherwise boots up to the READY Color BASIC prompt.<br>

### <F1>
Opens the Color BASIC editor, which allows use of the arrow, Home, End, Insert, and Delete keys to edit programs.  Returns to Color BASIC and runs the program when <F1> is pressed again. File not included on SD but is available to download here.<br>

## Screen Commands<br>

### CLS
Clears the screen with the current background color; moves cursor to top left corner.<br>

### COLOR f,b
Sets the foreground and background colors for subsequent screen commands.  Color BASIC has 64 colors (0-63).<br>

### LOCATE c,r
Moves the cursor to the specified text column (0-49) and row (0-36).<br>

### PRINT
Prints the value of a variable, or a string enclosed in quotes, at the current cursor location, in the current foreground and background colors.  Multiple variables and strings can be included in one PRINT statement, separated by commas and/or semicolons.<br>

### DISPLAY n
Displays the glyph currently assigned to the character with ASCII value n, at the current cursor location.  Multiple values can be included in the same DISPLAY command, separated by commas.  The Color BASIC character set includes some graphics characters, and the glyph of any printable character can be customized using the REDEFINE command.<br>

