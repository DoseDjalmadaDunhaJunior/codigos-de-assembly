;desvios, pulos, condicionais e incondicionais
;os famosos if e else
	
	org 0000h		;origem na memoria 00h
	clr a			;limpa o acumulador

inicio:

	cpl a			;complementa o a ou no caso nega a variavel
	mov p0,a		;move o valor do acumulador para o p0
	jmp inicio		;loop infinito

	end