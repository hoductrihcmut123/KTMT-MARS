.data
pi: .double 3.141592653589793238462643383
Ctext: .asciiz "Chu vi hinh tron la: "
Stext: .asciiz "Dien tinh hinh tron la: "
Etext: .asciiz "Ban kinh khong the nho hon 0"
endl: .asciiz "\n"
.text
main:
li $v0, 7
syscall #f0 = ban kinh

# Xet < 0
li $t0, 0
mfc1.d $t0, $f2
c.le.d $f0,$f2
bc1f continue

# text
la $a0, Etext
li $v0, 4
syscall
j exit

continue:
#f2 = pi
ldc1 $f2, pi

#f6 = pi*r*2 
#f4 = pi*r
mul.d $f4, $f2, $f0
add.d $f6, $f4, $f4

# text
la $a0, Ctext
li $v0, 4
syscall
#chu vi 
mfc1.d  $t0, $f6
mtc1.d  $t0, $f12
li $v0, 3
syscall
# text
la $a0, endl
li $v0, 4
syscall

#f12= pi*r*r
mul.d $f12, $f4, $f0
# text
la $a0, Stext
li $v0, 4
syscall
#Dien tich
li $v0, 3
syscall
# text
la $a0, endl
li $v0, 4
syscall

exit:
