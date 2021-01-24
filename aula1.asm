	org 0000h ;origem no endereço 00h

inicio:  ;label
	mov a,#0ffh ;move a constante 0ff para o acumulador a
	mov a, #00h ;move a constante 00 para o acumulador
	mov r0, #55h ; move a constante 55 hexa para o registrador 0
	mov b, #0aah ; move a contante aahexa para o registrador 0
	jmp $ ; segura nessa linha
	end ; final do programa