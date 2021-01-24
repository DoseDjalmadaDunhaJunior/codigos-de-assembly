; aritmetica com registradores e memoria

	org 00000h		;origem na memoria 00h

inicio:
	mov a,#0ah		;a recebe o valor 0ah
	mov	b,#03h		;b recebe o valor 03h
	mov	23h,#06h	;move o valor 6h para a memoria 23
	mov 20h,#0fh	;move o valor 0fh para a memoria 20
	add a,23h		;a = a + conteudo da memoria 23
	inc a			;incrementa a
	dec b			;decrementa b
	subb a,20h		;subtrai o conteudo da memoria 20 do a
	mov a,#0ch		;move o valor hexa para o acumulador
	mov	b,#08h		;move o valor 8h para o b
	mul ab			;ab = a*b  b = byte mais significativo e o a = byte menos significativo
	
	mov a,#45h		;move o valor 45 para o acumulador
	mov	b,#7		;move o valor 7 para o b

	div ab			;a = divisão e b = resto da divisão

	jmp $

end