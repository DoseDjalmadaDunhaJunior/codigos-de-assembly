; hello word em 8051
; clock: 12mhz
; ciclo de maquina 1/(cristal ou seja 12/12) = 1/1000000

		org 0000h ;origem no endereço 00h de memoria
	main:
		cpl a; complementar o acumulador (acc = not acc)
		mov P2,a; move o valor de acc para a porta 2
		call lento; 500ms de temporização
		ajmp main; loop infinito

lento:
		mov R1,#00fah ;1 | move o valor 250 decimal para o registrador R1
aux1:
		mov R2, #0f9h ; 1 |move o valor 249 decimal para o registrador R2
		nop
		nop
		nop
		nop
		nop
aux2:
		nop
		nop
		nop
		nop
		nop
		nop

		djnz R2,aux2 ; 2 | decrementa o R2 até 0
		djnz R1, aux1; 2 | decrementa R1 até chegar a 0

		ret ; retorna a função principal
end ;final do programa
