; registradores de uso geral

	org 0000h		;origem na memoria 00h

inicio:

	mov r1,#0fh		;move o valor 0fh para r1
	mov a,r1		;move o conteudo de r1 para o acumulador
	mov r5,a		;move o contudo do acumulador para o r5
	inc r5			;incrementa o r5
	inc r5
	inc r5
	
	JMP $			;segura o codigo nessa linha

	end