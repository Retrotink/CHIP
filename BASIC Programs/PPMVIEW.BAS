10 CLS 
20 x=0
30 y=0
45 d=0
46 s=60
50 OPEN "thehat.ppm",r
60 a=FILE 
61 e=FILE 
62 f=FILE 
63 IF e=10 THEN d=d+1
64 IF a=10 THEN d=d+1
65 IF f=10 THEN d=d+1
79 IF d < 4 THEN GOTO 60
80 PLOT x,y,a
81 x=x+1
90 IF x>s-1 THEN y=y+1 : x=0
91 LOCATE 40,1
92 PRINT a;
115 IF a = -1 THEN END 
120 GOTO 60
