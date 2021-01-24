; incremento ACC e DPTR REG

	org 0000h			;origem endereço 00h

inicio:
	
	mov a,#01h			;move a constante 1h para o acumulador (acc)
	mov b,#000000110b	;move a constante 6 (binario) para o b
	mov a,#07h			;move o valor 7 em decimal
	inc	a				;incrementa o acumulador em 1 unidade
	mov dptr,#9957h		;move o valor 9957h para o registrador data pointer
	jmp $				;segura nessa linha
	
	end					;fim do programa