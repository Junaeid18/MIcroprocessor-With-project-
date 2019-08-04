A8 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:A8
ORG 1000H

START:

;control register turn on
MOV AL,80H
OUT 1FH,AL

MOV AL,80H    
OUT 1EH,AL
   
M:  MOV SI,OFFSET DATA 
    MOV DL,00H     
  
M1: MOV BX,00H
    
M2:

    MOV AL,BYTE PTR CS:[SI]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+1]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+2]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+3]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+4]
    OUT 1BH,AL  
    
    MOV AL,BYTE PTR CS:[SI+5]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+6]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+7]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+8]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+9]
    OUT 1BH,AL
    
    MOV AL,BYTE PTR CS:[SI+10]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+11]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+12]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+13]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+14]
    OUT 1BH,AL
    
    MOV AL,BYTE PTR CS:[SI+15]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+16]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+17]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+18]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+19]
    OUT 1BH,AL
    
    MOV AL,BYTE PTR CS:[SI+20]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+21]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+22]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+23]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+24]
    OUT 1BH,AL
    
    MOV AL,BYTE PTR CS:[SI+25]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+26]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+27]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+28]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+29]
    OUT 1BH,AL
    
    MOV AL,BYTE PTR CS:[SI+30]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+31]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+32]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+33]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+34]
    OUT 1BH,AL
    
    MOV AL,BYTE PTR CS:[SI+35]
    OUT 18H,AL 
    MOV AL,BYTE PTR CS:[SI+36]
    OUT 1AH,AL
    MOV AL,BYTE PTR CS:[SI+37]
    OUT 1CH,AL 
    MOV AL,BYTE PTR CS:[SI+38]
    OUT 19H,AL
    MOV AL,BYTE PTR CS:[SI+39]
    OUT 1BH,AL
    
    
    
    INC BX
    CMP BX,0FFFH
    JNE M2
    
    ADD SI,40
    INC DL
    CMP DL,16H
    JNE M1
    JMP M


DATA:
;0.8
DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H 

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0F3H
DB 080H
DB 0F9H
DB 01H

;0.9
DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0F3H
DB 040H
DB 0F9H
DB 01H

DB 0FFH
DB 0FDH
DB 080H
DB 0F9H
DB 01H

;1
DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0FFH
DB 00H
DB 0F9H
DB 01H

DB 0FFH
DB 0F3H
DB 020H
DB 0F9H
DB 01H

DB 0FFH
DB 0FDH
DB 040H
DB 0F9H
DB 01H

DB 0FFH
DB 081H
DB 080H
DB 0F9H
DB 01H


;2
DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0F3H
DB 010H
DB 0A4H
DB 02H

DB 0FFH
DB 0FDH
DB 020H
DB 0A4H
DB 02H

DB 0FFH
DB 083H
DB 040H
DB 0A4H
DB 02H

DB 0C1H
DB 0FFH
DB 080H
DB 0A4H
DB 02H


;3
DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0F3H
DB 08H
DB 0A4H
DB 02H

DB 0FFH
DB 0FDH
DB 010H
DB 0A4H
DB 02H

DB 0FFH
DB 083H
DB 020H
DB 0A4H
DB 02H

DB 0C1H
DB 0FFH
DB 040H
DB 0A4H
DB 02H

DB 0B7H
DB 0FFH
DB 080H
DB 0A4H
DB 02H


;4
DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H

DB 0FFH
DB 0F3H
DB 04H
DB 0A4H
DB 02H

DB 0FFH
DB 0FDH
DB 08H
DB 0A4H
DB 02H

DB 0FFH
DB 083H
DB 010H
DB 0A4H
DB 02H

DB 0C1H
DB 0FFH
DB 020H
DB 0A4H
DB 02H

DB 0B7H
DB 0FFH
DB 040H
DB 0A4H
DB 02H

DB 0B7H
DB 0FFH
DB 080H
DB 0A4H
DB 02H


;5
DB 0FFH
DB 0FFH
DB 00H
DB 0A4H
DB 02H


DB 0FFH
DB 0F3H
DB 02H
DB 0A4H
DB 02H

DB 0FFH
DB 0FDH
DB 04H
DB 0A4H
DB 02H

DB 0FFH
DB 083H
DB 08H
DB 0A4H
DB 02H

DB 0C1H
DB 0FFH
DB 010H
DB 0A4H
DB 02H

DB 0B7H
DB 0FFH
DB 020H
DB 0A4H
DB 02H

DB 0B7H
DB 0FFH
DB 040H
DB 0A4H
DB 02H

DB 0C1H
DB 0FFH
DB 080H
DB 0A4H
DB 02H


;6
DB 0FFH
DB 0F3H
DB 01H
DB 0B0H
DB 0C0H

DB 0FFH
DB 0FDH
DB 02H 
DB 0B0H
DB 0C0H

DB 0FFH
DB 083H
DB 04H 
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 08H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 010H
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 020H
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 040H
DB 0B0H
DB 0C0H

DB 0DBH
DB 0DBH
DB 080H
DB 0B0H
DB 0C0H


;7
DB 0FFH
DB 0FDH
DB 01H
DB 0B0H
DB 0C0H

DB 0FFH
DB 083H
DB 02H 
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 04H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 08H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 010H
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 020H
DB 0B0H
DB 0C0H

DB 0DBH
DB 0DBH
DB 040H
DB 0B0H
DB 0C0H

DB 0ADH
DB 0ADH
DB 080H
DB 0B0H
DB 0C0H


;8
DB 0FFH
DB 083H
DB 01H 
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 02H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 04H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 08H 
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 010H
DB 0B0H
DB 0C0H

DB 0DBH
DB 0DBH
DB 020H
DB 0B0H
DB 0C0H

DB 0ADH
DB 0ADH
DB 040H
DB 0B0H
DB 0C0H

DB 0B5H
DB 0B5H
DB 080H
DB 0B0H
DB 0C0H


;9
DB 0C1H
DB 0FFH
DB 01H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 02H 
DB 0B0H
DB 0C0H

DB 0B7H
DB 0FFH
DB 04H 
DB 0B0H
DB 0C0H

DB 0C1H
DB 0FFH
DB 08H 
DB 0B0H
DB 0C0H

DB 0DBH
DB 0DBH
DB 010H
DB 0B0H
DB 0C0H

DB 0ADH
DB 0ADH
DB 020H
DB 0B0H
DB 0C0H

DB 0B5H
DB 0B5H
DB 040H
DB 0B0H
DB 0C0H

DB 0DBH
DB 0DBH
DB 080H
DB 0B0H
DB 0C0H 

;10...........

;c0;
DB B7H
DB FFH
DB 01H
DB 99H
DB 01H

;c1;
DB B7H
DB FFH
DB 02H
DB 99H
DB 01H

;c2;
DB C1H
DB FFH
DB 04H
DB 99H
DB 01H

;c3;
DB DBH
DB DBH
DB 08H
DB 99H
DB 01H

;c4;
DB ADH
DB ADH
DB 10H
DB 99H
DB 01H

;c5;
DB B5H
DB B5H
DB 20H
DB 99H
DB 01H

;c6;
DB DBH
DB DBH
DB 40H
DB 99H
DB 01H

;c7;
DB FFH
DB DBH
DB 80H
DB 99H
DB 01H

;11...........;

;c0;
DB B7H 
DB FFH
DB 01H
DB 99H
DB 01H

;c1;
DB C1H
DB FFH
DB 02H
DB 99H
DB 01H

;c2;
DB DBH
DB DBH
DB 04H
DB 99H
DB 01H

;c3;
DB ADH 
DB ADH
DB 08H
DB 99H
DB 01H

;c4;
DB B5H
DB B5H
DB 10H
DB 99H
DB 01H

;c5;
DB DBH
DB DBH
DB 20H
DB 99H
DB 01H

;c6;
DB FFH
DB DBH
DB 40H
DB 99H
DB 01H

;c7;
DB FFH
DB ADH
DB 80H
DB 99H
DB 01H


;11.5............;

c0;
DB C1H
DB FFH
DB 01H
DB 99H
DB 01H

;c1;
DB DBH
DB DBH
DB 02H
DB 99H
DB 01H

;c2;
DB ADH
DB ADH
DB 04H
DB 99H
DB 01H

;c3;
DB B5H
DB B5H
DB 08H
DB 99H
DB 01H

;c4;
DB DBH 
DB DBH
DB 10H
DB 99H
DB 01H

;c5;
DB FFH
DB DBH
DB 20H
DB 99H
DB 01H

;c6;
DB FFH
DB ADH
DB 40H
DB 99H
DB 01H

;c7;
DB FFH
DB B5H
DB 80H
DB 99H
DB 01H

;12.........;

;c0;
DB DBH
DB DBH
DB 01H
DB 99H
DB 01H

;c1;
DB ADH
DB ADH
DB 02H
DB 99H
DB 01H

;c2;
DB B5H
DB B5H
DB 04H
DB 99H
DB 01H

;c3;
DB DBH
DB DBH
DB 08H
DB 99H
DB 01H

;c4;
DB FFH
DB DBH
DB 10H
DB 99H
DB 01H

;c5;
DB FFH
DB ADH
DB 20H
DB 99H
DB 01H

;c6;
DB FFH
DB B5H
DB 40H
DB 99H
DB 01H

;c7;
DB FFH
DB DBH 
DB 80H
DB 99H
DB 01H

;13......................;

;c0;
DB ADH  
DB ADH
DB 01H
DB 99H
DB 01H

;c1;
DB B5H
DB B5H
DB 02H
DB 99H
DB 01H

;c2;
DB DBH
DB DBH
DB 04H
DB 99H
DB 01H

;c3;
DB FFH
DB DBH
DB 08H
DB 99H
DB 01H

;c4;
DB FFH
DB ADH
DB 10H
DB 99H
DB 01H

;c5;
DB FFH 
DB B5H
DB 20H
DB 99H
DB 01H

;c6;
DB FFH
DB DBH
DB 40H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH
DB 00H
DB 99H
DB 01H

;14..............;
;c0;
DB B5H
DB B5H
DB 01H
DB 99H
DB 01H

;c1;
DB DBH
DB DBH
DB 02H
DB 99H
DB 01H

;c2;
DB FFH
DB DBH
DB 04H
DB 99H
DB 01H

;c3;
DB FFH
DB ADH
DB 08H
DB 99H
DB 01H

;c4;
DB FFH
DB B5H
DB 10H
DB 99H
DB 01H

;c5;
DB FFH
DB DBH
DB 20H
DB 99H
DB 01H

;c6;
DB FFH
DB FFH
DB 00H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;15...............;
;c0;
DB DBH
DB DBH
DB 01H
DB 99H
DB 01H

;c1;
DB FFH
DB DBH
DB 02H
DB 99H
DB 01H

;c2;
DB FFH
DB ADH
DB 04H
DB 99H
DB 01H

;c3;
DB FFH
DB B5H
DB 08H
DB 99H
DB 01H

;c4;
DB FFH 
DB DBH
DB 10H
DB 99H
DB 01H

;c5;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;16.............;
;c0;
DB FFH
DB DBH 
DB 01H
DB 99H
DB 01H
 
;c1;
DB FFH
DB ADH
DB 02H
DB 99H
DB 01H

;c2;
DB FFH
DB B5H
DB 04H
DB 99H
DB 01H

;c3;
DB FFH
DB DBH
DB 08H
DB 99H
DB 01H

;c4;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;17...............;
;c0;
DB FFH
DB ADH
DB 01H
DB 99H
DB 01H

;c1;
DB FFH
DB B5H
DB 02H
DB 99H
DB 01H
 
;c2;
DB FFH
DB DBH
DB 04H
DB 99H
DB 01H

;c3;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c4;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H
      
;18........;
;c0;
DB FFH
DB B5H 
DB 01H
DB 99H
DB 01H

;c1;
DB FFH
DB DBH
DB 02H
DB 99H
DB 01H

;c2;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c3;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c4;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;19........;


;c0;
DB FFH 
DB DBH
DB 01H
DB 99H
DB 01H

;c1;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c2;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c3;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c4;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB FFH
DB FFH 
DB 00H
DB 99H
DB 01H  

EXIT:

A8 ENDS
END START     