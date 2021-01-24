; aula 3 demonstração ciclo de maquina

	org 0000h		;origem no endereço 0h

inicio:

	mov a, #01h		; move a constante 1h para o acumulador
	mov p2, #00h	; move o valor 00h para o port 2
	mov p2, #0ffh	; move o valor ffh para o port 2
	mov a, #02h		; move o valor 2h para o acumulador
	jmp inicio		; loop infinito

	end				; final do programa
