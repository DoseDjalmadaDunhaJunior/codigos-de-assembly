; direcionamento direto

	org 0000h		;origem no endereço 00h

inicio:

	mov 20h,#0bbh	;move o valor constante para o endereço 20h me memoria
	mov 32h,20h		;move o conteudo do endereço 20h de memoria para o endereço 23h
	mov	a,P2		;move o conteudo do port 2 para o acumulodor
	add	a,23h		;a = a + conteudo da memoria 23h

	end				;fim do programa