.text
.globl main

main:

addi $t0, $0, 0x7001	# Introduzo un enteiro de 16 bits ==> 28673
ori $t1, $0, 28673		# Introduzo o mesmo enteiro de 16 bits

addi $t2, $0, -28673		# Introduzo o mesmo enteiro pero negativo

addi $t2 , $0 , -32769 

addi $t3, $0, -32768
addi $t3,$t3, -1

		# Introduzo o enteiro 65546 = 0x1000A
lui $t3, 1	        	# Nos 16 bits superiores meto 1
ori $t3, $t3, 10	         	# Nos 16 inferiores meto 10

add $a0, $t3, $0		# Mostro o resultado en pantalla
addi $v0, $0, 1
syscall

		# Que pasa se o facemos ao rev�s?
ori $t4, $t4, 10	         	# Nos 16 inferiores meto 10
lui $t4, 1	        	# Nos 16 bits superiores meto 1

		# Que pasa se usamos addi?
lui $t4, 1	        	# Nos 16 bits superiores meto 1
addi $t4, $t4, 10	         	# Nos 16 inferiores meto 10

		# Pero, cuidado. Se o enteiro � 0x1800A = 98314
lui $t4, 0x1
addi $t4, $t4, 0x800A

add $a0, $t4, $0		# Mostro o resultado en pantalla: 32778
addi $v0, $0, 1
syscall

		# Con ori non pasa iso
lui $t4, 0x1
ori $t4, $t4, 0x800A

add $a0, $t4, $0		# Mostro o resultado en pantalla: 98314
addi $v0, $0, 1
syscall

addi $v0, $0, 10
syscall