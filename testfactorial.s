!Example: test program to call factorial function

EOL = 10

	.global main
main:
	save	%sp, 96, %sp

	call readInt
	nop
	
	call factorial
	nop
	
	call writeInt
	nop
	
	call writeChar
	mov EOL, %o0

	ret
	restore
