.data
	sothuc: .float -4 -2.43 -6.33 -1.2 -2.5 -99.65 -44 0 -0.6 -7.5 -1365.3 -4.3 -3.4 -0.1 -11.1 -12.2 -13.3 -14.4 -15.5 -9
	maxNum: .float 10000.0
	minNum: .float -10000.0
	khoangtrong: .asciiz " "

.text
	#for loop, f2, f4 is min, max
	la $t1, sothuc
	lwc1 $f2, maxNum
	lwc1 $f4, minNum
	addu $t0, $zero, $zero
startFor:
	beq $t0, 20, outFor
	lwc1 $f1, 0($t1)
	c.lt.s $f1, $f2
	bc1f outComparision1
	mov.s $f2, $f1
outComparision1:
	lwc1 $f1, 0($t1)
	c.lt.s $f1, $f4
	bc1t outComparision2
	mov.s $f4, $f1
outComparision2:
	addiu $t1, $t1, 4
	addiu $t0, $t0, 1
	j startFor
outFor:
	#print f2 (min)
	mov.s $f12, $f2
	li $v0, 2
	syscall
	#print a space
	li $v0, 4
	la $a0, khoangtrong
	syscall
	#print f4 (max)
	mov.s $f12, $f4
	li $v0, 2
	syscall
