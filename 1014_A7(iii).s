.data
	integer1:	.word 6
	integer2:	.word 4
	integer3:	.word 12
.text
.globl main

main:	lw $t0, integer1
	lw $t1, integer2
	lw $t2, integer3
	mul $t3,$t0,$t1
	div $t4,$t3,$t2

	li $v0, 1
	sub $a0, $t4, $zero
	syscall
	



---------------------------------------------------------------------------
.data
           integer1:           .asciiz "Enter NO. 1"
           integer2:           .asciiz "Enter NO. 2"
           integer3:           .asciiz"Enter  NO. 3"
           result:               .asciiz"The result is:"
.text
.globl main
li  $v0,4
la $a0,integer1
syscall

li $v0,6
syscall
mov.s $f1,$f0

li $v0,4
la $a0,integer2
syscall

li $v0,6
syscall
mov.s $f2,$f0

li $v0,4
la $a0,integer3
syscall

li $v0,6
syscall
mov.s $f4,$f0

mul.s $f6,$f1,$f2
div.s $f8,$f6,$f4

li $v0,4
la $a0,result
syscall

li $v0,2
mov.d $f12,$f8
syscall

li $v0,10
syscall