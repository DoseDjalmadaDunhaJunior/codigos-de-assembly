; instruções logicas boleanas

	org 0000h			;origem na memoria 00h

inicio:

	mov a,#01010011b	;carrega o valor 01010011b para o acumulador
	mov b,#00101001b	;carrega o valor 00101001b para o b

	anl a,b				;acc = acc and b
	cpl a				;acc = not(acc)
	
	orl a,b				;logica or se um for 1 ja da 1
	xrl a,b				;logica xor se as saidas forem iguais sai 1

	rr a				;>>
	rr a
	rr a
	rl a				;<<
	rl a
	rl a

	jmp $

	end