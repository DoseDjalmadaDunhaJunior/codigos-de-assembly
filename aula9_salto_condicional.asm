;desvios, pulos, condicionais e incondicionais
;os famosos if e else
	
	org 0000h		;origem na memoria 00h
	clr a			;limpa o acumulador

aux2:
	mov	p0,#0bbh	;move o valor bbh para o p0

inicio:

	jz	aux			;if(a == 0){aux}
	jnz	aux2		;if(a == 1){aux2}
	nop				;sem operação

aux:
	mov p0,#0aah	;move o valor aah para o p0
	mov a,p0		;move o valor de p0 para o a
	jmp	inicio		;vai para o inicio
	end