##### Pseudo ####
#
# soma_posicoes_pares(vetor, tamanho) {
# 	soma = 0;
# 	for (i=0 ; i<tamanho ; i+=2)
# 		soma += vetor[i];
# 	return soma;
# }
#
#################
.data
vetor: .word 0,1,2,3,4,5,6,7,8,9,10,11,12,13,14 # soma das pares = 56
	
.text

j main

soma_posicoes_pares:
	addi $t1, $zero, 0 # soma = 0
	addi $t2, $zero, 0 # i = 0
	addi $a1, $a1, 1 # tamanho do vetor + 1
	
	for:
		lw  $t3, ($a0)
		add $t1, $t1, $t3
		
		addi $t2, $t2, 8
		addi $a0, $a0, 8
		slt  $t3, $t2, $a1
		bne  $t3, $zero, for
	
	add $v0, $zero, $t1
	jr $ra
	
main:
	la $s0, vetor
	
	add  $a0, $zero, $s0 # vetor
	addi $a1, $zero, 60  # tamanho
	jal soma_posicoes_pares
	add $s1, $zero, $v0
