;direcionamento indireto

	org 0000h		;inicio na memoria 00h

inicio:

	mov 28h,#0bbh	;direcionamento imediato
	mov r1,#28h		;r1 aponta para o endereço 28h
	mov a, @r1		;o acumulador recebe o valor bbh
	
	jmp $			;segura o codigo nessa linha

	end