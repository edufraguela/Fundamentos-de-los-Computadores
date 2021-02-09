.text
.globl main

main:
	
addi $v0, $0, 5		# Lectura dun enteiro por teclado
syscall

sub $v0, $v0, $0		# Resta

addi $t0, $0, 1		# Suma inmediata dun número positivo
addi $t1, $0, -2		# Suma inmediata dun número negativo

add $t2, $0, $t1		# Suma con resultado negativo

add $a0, $v0, $0		# Copia do enteiro $v0 ao rexistro $a0 e
addi $v0, $0, 1		# escritura por pantalla do mesmo valor
syscall

addi $v0, $0, 10
syscall
