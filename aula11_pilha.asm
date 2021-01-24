; salvado dados na pilha 

	org 0000h		;origem na memoria 00h

inicio:
	
	mov a,#10h		;move o valor 10h para o acumulador
	mov b,#02h		;move o valor 02h para o b
	acall mult		;chama a sub rotina de multiplicação
	acall divi		;chama a sub rotina de divisão
	jmp $			;segura o programa nessa linha
	
mult:
	push acc		;salvando o valor de a na pilha
	push b			;salvando o valor de b na pilha
	mul ab			;multiplica a por b e salva o bity mais significativo em b e o menos significativo em a
	mov 23h,a		;move o conteudo de acc para a posição 23h
	mov 24,b		;move o conteudo de b para o endereço 24h
	pop	b			;recuperar o valor antigo de b
	pop acc			;recupera o valor antigo de b
	ret

divi:
	push acc		;salvando o valor de a na pilha
	push b			;salvando o valor de b na pilha
	div ab			;divide a por b e salva o resultado em a
	mov 25h,a		;move o conteudo de acc para a posição 23h
	mov 26,b		;move o conteudo de b para o endereço 24h
	pop	b			;recuperar o valor antigo de b
	pop acc			;recupera o valor antigo de b
	ret
	
	end