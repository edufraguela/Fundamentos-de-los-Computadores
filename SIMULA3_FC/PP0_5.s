.data
cadena: .asciiz  "Prueba"	# Creo a cadea de texto "Prueba" en memoria

.text
.globl main

main:

la $a0, cadena		# Cargo a dirección de inicio da cadea

lb $t0, 0($a0)		# Cargo en $t0 a primeira letra, "P"
lb $t1, 1($a0)		# Cargo en $t1 a segunda letra, "r"
lb $t2, 2($a0)		# Cargo en $t2 a terceira letra, "u"
lb $t3, 3($a0)		# Cargo en $t3 a cuarta letra, "e"
lb $t4, 4($a0)		# Cargo en $t4 a quinta letra, "b"
lb $t5, 5($a0)		# Cargo en $t5 a sexta letra, "a"

		# Vou almacenar as letras en orde inversa
sb $t5, 0($a0)		# sobre a cadea orixinal
sb $t4, 1($a0)
sb $t3, 2($a0)
sb $t2, 3($a0)
sb $t1, 4($a0)
sb $t0, 5($a0)

addi $v0, $0, 10
syscall
