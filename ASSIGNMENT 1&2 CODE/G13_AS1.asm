G13_AS1 SEGMENT PARA PUBLIC 'CODE'  
ASSUME CS:G13_AS1
ORG 1000H

START:
    MOV AL,80H
    OUT 1FH,AL
    
PROGRAM:
    MOV AL,092H
    OUT 19H,AL
    
    MOV CX,0FFFFH
    L0:LOOP L0
    
    MOV AL,08EH
    OUT 19H,AL
    
    MOV CX,0FFFFH
    L1:LOOP L1
    
    MOV AL,099H
    OUT 19H,AL
    
    MOV CX,0FFFFH
    L2:LOOP L2
    JMP PROGRAM
              
G13_AS1 ENDS
END START