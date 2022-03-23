.data

caub:.ascii   "\n1912288-Ho Duc Tri\n"

.text
main:

la $a2,caub
lb $t1,1($a2)
lb $t2,18($a2)
sb $t2,1($a2)
sb $t1,18($a2)

li $v0,4
la $a0,caub
syscall 


