.data		# Reserva de espazo para datos en memoria.
numeros: .word 8, 7, 3, 29	# Reservamos un vector de 4 enteiros baixo
		# o nome de "numeros"

.text		# Texto obligatorio para comezar
.globl main		# un programa
main:

la $a0, numeros		# Carga de números do vector en rexistros
lw $t0, 0($a0)
lw $t1, 4($a0)
lw $t2, 8($a0)
lw $t3, 12($a0)

addi $t0, $0, 3		# Introdución en rexistros de novos valores
addi $t1, $t1, -8
addi $t2, $t2, 12
addi $t3, $0, 0

sw $t0, 0($a0)		# Escritura no vector dos novos valores
sw $t1, 4($a0)
sw $t2, 8($a0)
sw $t3, 12($a0)

addi $v0, $0, 10		# Finalización do programa
syscall
