.data		# Reserva de espazo para datos en memoria.
cadena: .space 100		# Reservamos 100 bytes baixo o nome de
		# "cadena"

.text		# Texto obligatorio para comezar
.globl main		# un programa
main:

la $a0, cadena		# Gardamos en $a0 a direcci�n da cadea
addi $a1, $0, 100		# de texto e en $a1 a lonxitude m�xima
addi $v0, $0, 8		# Lectura da cadea por teclado
syscall

saida: 
addi $v0, $0, 4		# Impresi�n da cadea por pantalla
syscall
j saida

addi $v0, $0, 10		# Finalizaci�n do programa
syscall
