A6 SEGMENT PARA PUBLIC 'CODE'
ASSUME CS:A6
ORG 1000H

START:

;control register turn on
MOV AL,80H
OUT 1FH,AL


MOV AL,80H
OUT 1EH,AL

 


      

loop1: mov dh, 0h                       ;variable for scene counting (22 scenes)
       mov di, offset DATA 

loop2: 
       mov bx, 0h                       ; variable for running a scene 2^12 times

loop3: mov al, byte ptr cs:[di]
       out 18h,al
       mov al, byte ptr cs:[di+1]       ;following 8 segments glow the 8 columns of each scene
       out 1ah,al
       mov al, byte ptr cs:[di+2]
       out 1ch,al



       mov al, byte ptr cs:[di+3]
       out 18h,al
       mov al, byte ptr cs:[di+4]
       out 1ah,al
       mov al, byte ptr cs:[di+5]
       out 1ch,al

    
       mov al, byte ptr cs:[di+6]
       out 18h,al
       mov al, byte ptr cs:[di+7]
       out 1ah,al
       mov al, byte ptr cs:[di+8]
       out 1ch,al


       mov al, byte ptr cs:[di+9]
       out 18h,al
       mov al, byte ptr cs:[di+10]
       out 1ah,al
       mov al, byte ptr cs:[di+11]
       out 1ch,al

       mov al, byte ptr cs:[di+12]
       out 18h,al
       mov al, byte ptr cs:[di+13]
       out 1ah,al
       mov al, byte ptr cs:[di+14]
       out 1ch,al


       mov al, byte ptr cs:[di+15]
       out 18h,al
       mov al, byte ptr cs:[di+16]
       out 1ah,al
       mov al, byte ptr cs:[di+17]
       out 1ch,al


       mov al, byte ptr cs:[di+18]
       out 18h,al
       mov al, byte ptr cs:[di+19]
       out 1ah,al
       mov al, byte ptr cs:[di+20]
       out 1ch,al

       mov al, byte ptr cs:[di+21]
       out 18h,al
       mov al, byte ptr cs:[di+22]
       out 1ah,al
       mov al, byte ptr cs:[di+23]
       out 1ch,al

       
       
       inc bx

       cmp bx,0fffh                       ; checking if a scene has been run 0fffh times
       jne loop3
       


       add di, 24                         ; going to the next scene which's starting is 8 blocks away, so 8*3=24 data bytes away
       inc dh
       cmp dh,16h                         ; checking if all 22 scene completed, if so, start from the beginning through the next unconditional jump
       
       jne loop2

       
       jmp loop1
    


DATA:



EXIT:

A6 ENDS
END START
