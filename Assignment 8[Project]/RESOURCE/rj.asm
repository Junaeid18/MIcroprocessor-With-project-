                                                  A6 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:A6
ORG 1000H

START:

;control register turn on
MOV AL,80H
OUT 1FH,AL

 


       mov dl, 1h

loop1: mov dh, 0h 

loop2: mov di, offset DATA
       mov ch, 0h  

loop3: mov al, byte ptr cs:[di]
       out 18h,al
       mov al, byte ptr cs:[di+1]
       out 1ah,al
       mov al, byte ptr cs:[di+2]
       out 1ch,al

       inc di
       inc di
       inc di
       
       inc ch

       cmp ch,dl  
       jne loop3
   
       inc dh
       cmp dh,0FFh  
       jne loop2

       inc dl
       cmp dl, 1Bh ;
       jne loop1
    


DATA:
;C0
DB 0FFH
DB 0BFH
DB 01H

DB 0FFH
DB 09FH
DB 01H


DB 0FFH
DB 08FH
DB 01H


DB 0FFH
DB 087H
DB 01H


DB 0FFH
DB 083H
DB 01H


DB 0FFH
DB 081H
DB 01H


DB 0FFH
DB 080H
DB 01H

;R0
DB 0FFH
DB 0FEH
DB 02H
 

DB 0FFH
DB 0FEH
DB 06H


DB 0FFH
DB 0FEH
DB 0EH


DB 0FFH
DB 0FEH
DB 1EH


DB 0FFH
DB 0FEH
DB 03EH


DB 0FFH
DB 0FEH
DB 07EH

;C7
DB 0FFH
DB 0BFH
DB 080H


DB 0FFH
DB 09FH
DB 080H


DB 0FFH
DB 08FH
DB 080H


DB 0FFH
DB 087H
DB 080H


DB 0FFH
DB 083H
DB 080H


DB 0FFH
DB 081H
DB 080H


DB 0FFH
DB 080H
DB 080H

;R7
DB 0FFH
DB 07FH
DB 02H


DB 0FFH
DB 07FH
DB 06H


DB 0FFH
DB 07FH
DB 0EH


DB 0FFH
DB 07FH
DB 01EH


DB 0FFH
DB 07FH
DB 03EH


DB 0FFH
DB 07FH
DB 07EH



EXIT:

A6 ENDS
END START
