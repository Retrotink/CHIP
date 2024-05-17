10 FOR x= 1 TO 200
11 POKE x,0
12 NEXT x
15 CLS 
20 PRINT "Please enter your name:";
25 x=1 : GOSUB 100
30 PRINT " " : PRINT " "
40 PRINT "How do you feel? :";
50 x=50 : GOSUB 100
60 PRINT " ": PRINT " ": PRINT "Hello ";
70 c=1: GOSUB 300
80 PRINT " " : PRINT " ":PRINT "I'm pleased you are ";
90 c=50:GOSUB 300
95 PRINT " "
99 END 
100 REM *******************
110 REM ** Input Routine **
120 REM *******************
130 a=INKEY 
140 IF a= 200 THEN DISPLAY 8: DISPLAY 32: DISPLAY 8
150 IF a= 200 THEN x=x-1
160 IF a= 200 THEN LET a=0
170 IF a= 13 THEN RETURN 
180 IF a > 0 THEN POKE x,a
190 IF a > 0 THEN LET x=x+1
200 IF a > 0 THEN DISPLAY a
210 GOTO 130
300 REM ********************
310 REM ** Display Memory **
320 REM ********************
330 a=PEEK (c)
340 IF a > 0 THEN DISPLAY PEEK (c)
350 IF a =0 THEN RETURN 
360 LET c=c+1
370 GOTO 330
