;desvios, pulos, condicionais e incondicionais
;os famosos if e else
	
	org 0000h		;origem na memoria 00h
	mov r0,#05		;move o valor 05 para o r0
inicio:

	mov p1,r0		;move o conteudo de r0 para p1
	djnz r0,inicio	;r0 = r0-1
	jmp $			;segura o codigo nessa linha
	end