! factorial:  a function to compute x factorial
! Calling sequence: integer value x loaded into %o0
!		call factorial
! Returns: x factorial in %o0 (returns 1 if x is negative also)

	.global factorial
factorial:
	save	%sp, 96, %sp
	mov 	%i0, %l1 	!save parameter x
	mov 	1, %o0		!initialize product to 1
	cmp	%l1, 1		!is x < 1?
	ble	done		!if so, done
	nop
loop:
	mov 	%l1, %o1	!multiplyproduct by x
	call	.mul		
	nop

	deccc	%l1		!decrement x
	bg	loop		! if x > go to loop
	nop
	
done:
	mov 	%o0, %i0	!return product
	
	ret
	restore
	
