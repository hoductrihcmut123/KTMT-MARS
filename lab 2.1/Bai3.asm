.data

.text
main:
li $v0,5
syscall 
add $t1,$0,$v0

li $v0,5
syscall 
add $t2,$0,$v0

li $v0,5
syscall 
add $t3,$0,$v0

li $v0,5
syscall 
add $t4,$0,$v0

li $v0,5
syscall 
add $t5,$0,$v0

mul $s0,$t1,$t5
sub $s0,$s0,$t2
mul $s0,$s0,$t5
add $s0,$s0,$t3
mul $s0,$s0,$t5
sub $s0,$s0,$t4
or $a0,$0,$s0
li $v0,1
syscall 



























