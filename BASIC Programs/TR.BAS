10 REM 
20 REM FILE TRANSMIT/RECEIVE
30 REM 
40 REM WRITTEN BY VINCE BRIEL
50 REM 04/12/2024
60 REM FILE NAME NEEDS TO BE TEMP.BAS
70 CLS:COLOR 63,0:LOCATE 0,10
80 INPUT "1=TRANSMIT OR 2= RECEIVE";I
90 IF I=1 THEN GOTO 120
100 IF I=2 THEN GOTO 200
110 PRINT "PLEASE ENTER 1 OR 2":GOTO 80
120 REM TRANSMIT FILE TO PC
130 OPEN "TEMP.BAS",R
140 A=FILE
150 IF A > 12 THEN DISPLAY A: TX A
160 IF A > -1 THEN GOTO 140
170 PRINT " "
180 CLOSE "TEMP.BAS"
190 END
200 REM RECEIVE FILE FROM PC
210 PRINT "PRESS A KEY WHEN FILE IS COMPLETE"
220 OPEN "TEMP.BAS", W
230 PRINT "SEND FILE FROM COMPUTER NOW"
240 A=RX
250 B=INKEY:IF B <> 0 THEN GOTO 300
260 IF A<0 THEN GOTO 240
270 FILE =A
280 IF A>12 THEN DISPLAY A
290 GOTO 240
300 CLOSE "TEMP.BAS"
310 END
