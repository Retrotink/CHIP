# C.H.I.P. User Manual <br>

This manual is designed as an overview of the CHIP singleboard computer and the Propeller Color BASIC programming language. <br>

Work in progress... Coming soon...<br>
<br>

## Quick Set Up and First Power Up of your CHIP Computer<br>

<br>

![20240609_074116](https://github.com/Retrotink/CHIP/assets/121696513/52bef126-787a-4a13-9083-2b88891effae)

<br>
CHIP Shown with Power, SD Card, Audio, VGA Video and PS/2 Keyboard attached<br>
To turn on, move the slide switch toward the near corner of the board and the unit will turn on.<br>If speakers are installed you will hear a tone indicating that the computer is up and running. <br>
<br>

![20240609_074926](https://github.com/Retrotink/CHIP/assets/121696513/c5d7e10a-d565-433f-a8a9-6a143c60fc48)


First thing to check is that your SD card is working correctly.<br>
Type the command "dir" and press the "enter" key and the keyboard.<br>
This will list out your files on the SD card.<br>
<br>

![20240609_074950](https://github.com/Retrotink/CHIP/assets/121696513/133b99c6-99b1-4274-ba7b-2d9b62127739)

<br>

### One thing to note: To stop a program press the "pause/break" key on the keyboard. <br>
<br>
Let's load a game!<br>
<br>
Type in the command: <br>

### LOAD "PONG.BAS"<br>
<br>
The computer will go to the SD card and if everything is good will load the game.<br>
If you wish to see the listing of the game, you can type:<br>

### LIST<br>
<br>
This will dump the listing of the program onto the screen. <br>To list only a section of the program you can use line numbers with a comma inbetween.<br>

### LIST 1,100<br>
This will list any lines of code between 1 and 100 including lines 1 and 100<br>
<br>

![20240609_075729](https://github.com/Retrotink/CHIP/assets/121696513/4de9715e-6aa9-4c57-8fcf-8a81f596a96f)

<br>
<br>
To run the game, you type in:<br>

### RUN<br>
<br>
The game is played with the arrow keys.<br>
<br>

### NOTE: To stop the game press the pause/break key on the keyboard.<br>
<br>

### Writing our First Program!<br>
<br>
CHIP has a built in Tiny BASIC that can do color screen programming. <br>
Let's start with something simple. First we need to clear the program memory.<br>
We do that with the "new" command. Type in:

### NEW<br>
<br>
The program memory is now clear and ready for you to program.<br>
Let's make a really simple "Hello World" program.<br>
<br>
Type in the following program as shown.<br>
<br>

### 10 CLS<br>

### 20 PRINT "HELLO WORLD!"<br>

### 30 END<br>
<br>
When you type in "run" the program will clear the screen and start from the top-left of the screen.<br>
It will then print out the statement "HELLO WORLD!" on the screen.<br>
The last program line is END, this does what it says and ends the program.<br>
<br>
This is a quick start guide and not programming guide, there are many books out there on programming BASIC.<br>
Keep in mind, this is a Tiny BASIC and no string variables are included, but there is 32K of memory to peek and poke.<br>
So you can see in the program INPUT.BAS how to input variables and store them and recall them from memory. <br>
I'm going to try and have an explination of every BASIC command in another folder on github.<br>




