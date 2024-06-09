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
Saves the program currently in program memory to the SD card, with the name of DESKTOP.TMP.  CHIP Color BASIC and the editor are separate programs and pass this DESKTOP.TMP file back and forth to open and close the editor.<br>

### REBOOT
Reboots the CHIP Computer, just like pressing the reset button or interrupting power.  If there is a file named DESKTOP.TMP in the root directory of the SD card, loads and runs that file.  Otherwise boots up to the READY Color BASIC prompt.<br>

### <F1>
Opens the CHIP Color BASIC editor (not included on the SD card), which allows use of the arrow, Home, End, Insert, and Delete keys to edit programs.  Returns to CHIP Color BASIC and runs the program when <F1> is pressed again. File not included on SD but is available to download here.<br>

# Screen Commands<br>

### CLS
Clears the screen with the current background color; moves cursor to top left corner.<br>

### COLOR f,b
Sets the foreground and background colors for subsequent screen commands.  CHIP Color BASIC has 64 colors (0-63).<br>

### LOCATE c,r
Moves the cursor to the specified text column (0-49) and row (0-36).<br>

### PRINT
Prints the value of a variable, or a string enclosed in quotes, at the current cursor location, in the current foreground and background colors.  Multiple variables and strings can be included in one PRINT statement, separated by commas and/or semicolons.<br>

### REDEFINE n, a,b,c,d,e,f,g,h
Changes the glyph of ASCII character n to the 8x8 pixel map defined by a-h, which are 8-bit integers.  Characters on the screen assume their new glyph immediately upon redefinition. In short, you can change the character into special characters.<br>

### DISPLAY n
Displays the glyph currently assigned to the character with ASCII value n, at the current cursor location.  Multiple values can be included in the same DISPLAY command, separated by commas.  The CHIP Color BASIC character set includes some graphics characters, and the glyph of any printable character can be customized using the REDEFINE command.<br>

### PLOT x,y,c
Places a small square (one quarter of a text cell, or 4x4 pixels) in color c at graphics column x (0-99) and graphics row y (0-74).  Only one foreground color is allowed in any text cell, so plotting a square of a different color in the same text cell will change the color  of any other squares in that text cell.<br>

### BOX u,v,x,y,c
Places a box on the screen in color c with the top left corner at graphics coordinates u,v and the bottom right corner at x,y.<br>

### LINE u,v,x,y,c
Draws a line in color c between graphics coordinates u,v and x,y.<br>

# Keyboard Commands

### INKEY
Checks the keyboard buffer for a keystroke and returns the assigned value of any key pressed, or 0 otherwise.  Almost always used to the right of the assignment operator, as in A=INKEY.<br>

### INPUT “prompt”; a,b,c
Prints the “prompt”, if any, at the current cursor location, then waits for the user to input the prompted number of integers, separated by commas, then press <Enter>.  Generates a syntax error if the number of variables input by the user does not equal the number expected.  Note that CHIP Color BASIC does not handle strings, and this capability is for integers only.<br>

# Program Control Commands

### GOTO xxx
Directs program flow to jump to the instruction in Line xxx.<br>

### GOSUB xxx
### …<br>
### RETURN
Directs program flow to the subroutine at Line xxx, then back to the calling routine on the RETURN command in the subroutine.  All 26 variables (A-Z) in CHIP Color BASIC are shared, so arguments are not explicitly passed and subroutine variables are not private.<br>

### IF expression THEN command
Checks to see whether the expression is TRUE (non-zero), and if it is executes the command(s) following THEN.  CHIP Color BASIC does not include ELSE or ENDIF constructs.  Multiple commands can be concatenated after the THEN by separating them with a colon.<br>
### Example: 

### 10 IF A=B THEN GOTO 200
In the example above, if A and B variables are the same, then the program will "goto" line 200. The "goto" is required. It will error without it. <br>

### PAUSE nnnn
Pauses program execution for nnnn milliseconds.<br>

### REM
Allows insertion of a textual remark after the REM for internal documentation.  May be used on its own program line, or (generally, but not always) at the end of program line containing other commands.<br>

### END
Terminates program execution and returns to the flashing cursor prompt to await user command.  END is not required, but is useful to separate the main body of a program from following subroutines.<br>

# Audio Commands

### NOTEON nn
Sends a continuing tone of value nn to the audio connector; useful values seem to range from 0 to 100.  A powered speaker works best with the Amigo, but earbuds will do in a pinch.<br>

### NOTEOFF
Stops any tone currently playing on the audio connector.<br>

### PLUCK nn
Sends a note (not a continuing tone) to the audio channel.  PLUCK 40 is close to middle C, and consecutive integers will play the notes of adjacent white and black keys on a piano keyboard.<br>

# File System Commands

### OPEN “filename”, mode
Opens a file on the SD card in the desired mode (either R, W, or A — for Read, Write, or Append). Files opened in Read mode will not be modified by any program actions.  Files opened in Write mode may have any or all of their content modified.  Files opened in Append mode may be modified only by adding content at the end of their current content.<br>

### WRITE a,b,c
Stores the values of the specified variables into a file opened for writing or appending.  You should not include other CHIP Color BASIC commands (including REM) on the same program line as WRITE.<br>

### READ a,b,c
Places data from a file opened for reading into the specified variables.  The number of variables specified must not exceed the number of values in that line of the data file.  (Otherwise CHIP Color BASIC returns a syntax error.) <br> 
Note that  the the numerical values to be retrieved by READ from the file cannot be negative; Color BASIC will interpret this as an End of File condition.  Also note that you should not include other CHIP Color BASIC commands (including REM) on the same program line as READ.<br>

### CLOSE
Closes the file currently open, if any.  CHIP Color BASIC can have only one file open at any given time.<br>

# GPIO Commands (Pin I/O Commands)

### INA <pin>
Reads the value of the voltage level (either a logic 1 or 0) on the specified input/output <pin> (0 through 31) of the Propeller chip.  Used for interfacing CHIP Color BASIC programs to external circuits through the CHIP experimenter’s onboard ports 8-15. <br>

### WARNING: Use only 8-15 pins for I/O that is on the CHIP PCB for experimenting. Using other I/O pins could cause issues and force you to RESET your CHIP Computer.

### OUTA[<pin>] = n
Changes the specified input/output <pin> of the Propeller chip (0 through 31) to either a logic 1 or 0.  Use only 8-15 for the pins on the CHIP I/O section.  <br>

### WARNING: Use only 8-15 pins for I/O that is on the CHIP PCB for experimenting. Using other I/O pins could cause issues and force you to RESET your CHIP Computer.

# Operators and Other Commands

### Arithmetic Operators
CHIP Color BASIC supports 32-bit integer arithmetic, including operators for addition (+), subtraction (-), multiplication (*), integer division (/), and modulo or remainder (//).  <br>
Arithmetic operations return a 32-bit integer value.<br>

### Comparison Operators
Comparison operators include greater than (>), less than (<), equals (=), greater than or equal to (>=), less than or equal to (<=), and not equal to (<>).<br>  
Comparison operations return either a -1 (the comparison is TRUE) or 0 (the comparison is FALSE).<br>

### Logical Operators
CHIP Color BASIC logical operators include NOT, AND, and OR.  Logical operations also return either a -1 or a 0 value.<br>

### BRUN “filename” (Advanced users of Propeller)
Loads a binary file from the SD card to Amigo main memory and runs it.  The loaded file completely replaces CHIP Color BASIC (which is itself a Propeller binary).  CHIP Color BASIC is reloaded and run after “filename” terminates.  Several games and other programs are available for the CHIP as .BIN files. <br>

### BYTE [nnnnn]
Reads or writes an 8-bit value from / to the CHIP main memory location specified, where nnnnn is between 0 and 32767.  The command can be used on either side of the “equals sign” assignment operator, as in A=BYTE[1921] (reading from main memory) and BYTE[1921]=65 (writing to it).  <br>

### Caution should be used when writing to main memory because this could corrupt the CHIP Color BASIC image and lead to unexpected results.  If this happens, just reboot.

### MEM
Returns the amount of unused program memory, in bytes.  The CHIP Computer has 4K of program memory with no program loaded.<br>

### RND (n)
Returns a random number between 0 and n - 1.<br>

### SERIAL r,t,m,b
Initializes the CHIP serial communication channel, where r is the receive Propeller pin (default 31), t is the transmit pin (default 30), m is the mode (default 0), and b is the baud rate (between 300 and 115200).  <br>
Generally placed at the beginning of a program, as in SERIAL 31,30,0,115200. This is the CHIP serial port pins. You can use the external pins for more serial communications.<br>

### RX
Fetches a byte from the previously initialized serial receive pin and passes it to a variable, as in  A=RX.<br>

### TX <byte>
Pushes a byte to the previously initialized serial transmit pin, as in TX A.<br>

### VER
Returns the version of CHIP Color BASIC loaded in the EEPROM of the Amigo, used on each boot up.<br>







