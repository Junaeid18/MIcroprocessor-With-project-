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
  
M1: MOV CX,00H
    
M2:  MOV BX,00H

LOOP1:    
    MOV AL,BYTE PTR CS:[SI+BX]
    OUT 18H,AL
    INC BX
     
    MOV AL,BYTE PTR CS:[SI+BX]
    OUT 1AH,AL 
    INC BX
    
    MOV AL,BYTE PTR CS:[SI+BX]
    OUT 1CH,AL
    INC BX
     
    MOV AL,BYTE PTR CS:[SI+BX]
    OUT 19H,AL
    INC BX
    
    MOV AL,BYTE PTR CS:[SI+BX]
    OUT 1BH,AL   
    INC BX
    
    CMP BX,28H
    JNE LOOP1
    
    
    
    INC CX
    CMP CX,0FFFH
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
DB 0CH

DB 0FFH
DB 0FDH
DB 02H 
DB 0B0H
DB 0CH

DB 0FFH
DB 083H
DB 04H 
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 08H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 010H
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 020H
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 040H
DB 0B0H
DB 0CH

DB 0DBH
DB 0DBH
DB 080H
DB 0B0H
DB 0CH


;7
DB 0FFH
DB 0FDH
DB 01H
DB 0B0H
DB 0CH

DB 0FFH
DB 083H
DB 02H 
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 04H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 08H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 010H
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 020H
DB 0B0H
DB 0CH

DB 0DBH
DB 0DBH
DB 040H
DB 0B0H
DB 0CH

DB 0ADH
DB 0ADH
DB 080H
DB 0B0H
DB 0CH


;8
DB 0FFH
DB 083H
DB 01H 
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 02H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 04H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 08H 
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 010H
DB 0B0H
DB 0CH

DB 0DBH
DB 0DBH
DB 020H
DB 0B0H
DB 0CH

DB 0ADH
DB 0ADH
DB 040H
DB 0B0H
DB 0CH

DB 0B5H
DB 0B5H
DB 080H
DB 0B0H
DB 0CH


;9
DB 0C1H
DB 0FFH
DB 01H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 02H 
DB 0B0H
DB 0CH

DB 0B7H
DB 0FFH
DB 04H 
DB 0B0H
DB 0CH

DB 0C1H
DB 0FFH
DB 08H 
DB 0B0H
DB 0CH

DB 0DBH
DB 0DBH
DB 010H
DB 0B0H
DB 0CH

DB 0ADH
DB 0ADH
DB 020H
DB 0B0H
DB 0CH

DB 0B5H
DB 0B5H
DB 040H
DB 0B0H
DB 0CH

DB 0DBH
DB 0DBH
DB 080H
DB 0B0H
DB 0CH 

;10...........

;c0;
DB 0B7H
DB 0FFH
DB 01H
DB 99H
DB 01H

;c1;
DB 0B7H
DB 0FFH
DB 02H
DB 99H
DB 01H

;c2;
DB 0C1H
DB 0FFH
DB 04H
DB 99H
DB 01H

;c3;
DB 0DBH
DB 0DBH
DB 08H
DB 99H
DB 01H

;c4;
DB 0ADH
DB 0ADH
DB 10H
DB 99H
DB 01H

;c5;
DB 0B5H
DB 0B5H
DB 20H
DB 99H
DB 01H

;c6;
DB 0DBH
DB 0DBH
DB 40H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 81H
DB 80H
DB 99H
DB 01H

;11...........;

;c0;
DB 0B7H 
DB 0FFH
DB 01H
DB 99H
DB 01H

;c1;
DB 0C1H
DB 0FFH
DB 02H
DB 99H
DB 01H

;c2;
DB 0DBH
DB 0DBH
DB 04H
DB 99H
DB 01H

;c3;
DB 0ADH 
DB 0ADH
DB 08H
DB 99H
DB 01H

;c4;
DB 0B5H
DB 0B5H
DB 10H
DB 99H
DB 01H

;c5;
DB 0DBH
DB 0DBH
DB 20H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 81H
DB 40H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0B5H
DB 80H
DB 99H
DB 01H


;11.5............;

;c0
DB 0C1H
DB 0FFH
DB 01H
DB 99H
DB 01H

;c1;
DB 0DBH
DB 0DBH
DB 02H
DB 99H
DB 01H

;c2;
DB 0ADH
DB 0ADH
DB 04H
DB 99H
DB 01H

;c3;
DB 0B5H
DB 0B5H
DB 08H
DB 99H
DB 01H

;c4;
DB 0DBH 
DB 0DBH
DB 10H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 81H
DB 20H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0B5H
DB 40H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0B5H
DB 80H
DB 99H
DB 01H

;12.........;

;c0;
DB 0DBH
DB 0DBH
DB 01H
DB 99H
DB 01H

;c1;
DB 0ADH
DB 0ADH
DB 02H
DB 99H
DB 01H

;c2;
DB 0B5H
DB 0B5H
DB 04H
DB 99H
DB 01H

;c3;
DB 0DBH
DB 0DBH
DB 08H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 81H
DB 10H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0B5H
DB 20H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0B5H
DB 40H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0CBH 
DB 80H
DB 99H
DB 01H

;13......................;

;c0;
DB 0ADH  
DB 0ADH
DB 01H
DB 99H
DB 01H

;c1;
DB 0B5H
DB 0B5H
DB 02H
DB 99H
DB 01H

;c2;
DB 0DBH
DB 0DBH
DB 04H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 81H
DB 08H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 0B5H
DB 10H
DB 99H
DB 01H

;c5;
DB 0FFH 
DB 0B5H
DB 20H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0CBH
DB 40H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH
DB 00H
DB 99H
DB 01H

;14..............;
;c0;
DB 0B5H
DB 0B5H
DB 01H
DB 99H
DB 01H

;c1;
DB 0DBH
DB 0DBH
DB 02H
DB 99H
DB 01H

;c2;
DB 0FFH
DB 81H
DB 04H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 0B5H
DB 08H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 0B5H
DB 10H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0CBH
DB 20H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0FFH
DB 00H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;15...............;
;c0;
DB 0DBH
DB 0DBH
DB 01H
DB 99H
DB 01H

;c1;
DB 0FFH
DB 81H
DB 02H
DB 99H
DB 01H

;c2;
DB 0FFH
DB 0B5H
DB 04H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 0B5H
DB 08H
DB 99H
DB 01H

;c4;
DB 0FFH 
DB 0CBH
DB 10H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;16.............;
;c0;
DB 0FFH
DB 81H 
DB 01H
DB 99H
DB 01H
 
;c1;
DB 0FFH
DB 0B5H
DB 02H
DB 99H
DB 01H

;c2;
DB 0FFH
DB 0B5H
DB 04H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 0CBH
DB 08H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;17...............;
;c0;
DB 0FFH
DB 0B5H
DB 01H
DB 99H
DB 01H

;c1;
DB 0FFH
DB 0B5H
DB 02H
DB 99H
DB 01H
 
;c2;
DB 0FFH
DB 0CBH
DB 04H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H
      
;18........;
;c0;
DB 0FFH
DB 0B5H 
DB 01H
DB 99H
DB 01H

;c1;
DB 0FFH
DB 0CBH
DB 02H
DB 99H
DB 01H

;c2;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;19........;


;c0;
DB 0FFH 
DB 0CBH
DB 01H
DB 99H
DB 01H

;c1;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c2;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c3;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c4;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c5;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c6;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H

;c7;
DB 0FFH
DB 0FFH 
DB 00H
DB 99H
DB 01H  

EXIT:

A8 ENDS
END START     