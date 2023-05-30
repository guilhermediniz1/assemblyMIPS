##### Pseudo ####
# 
# preenche_fibonacci(vetor, quantidade, pos) {
# 	if (pos < 3)
# 		vet[pos] = 1;
# 	else
# 		vet[pos] = vet[pos-1]+ vet[pos-2];
# 	if (pos < quantidade)
# 		preenche_fibonacci(vetor, quantidade, pos+1);
# }
# * Vou implementar para um vetor de 6 posições
#################
.data
	vetor: .word 0,0,0,0,0,0
	
	quantidade: .word 6
	
.text
j main

preenche_fibonacci:
	add $a0, $a0, $a2 # Define a posição atual que vamos usar
	slti $t1, $a3, 3
	beq $t1, $zero, else
	addi $t9, $zero, 1
	sw $t9, ($a0)
	else:
	addi $a0, $a0, -8 # vet[pos - 2]
	lw $t7, ($a0)
	addi $a0, $a0, 4 	# vet[pos - 1]
	lw $t8, ($a0)
	addi $a0, $a0, 4 # volta para a posicao atual
	add $t9, $t7, $t8	# vet[pos] = vet[pos - 2] + vet[pos - 1]
	sw $t9, ($a0)
	
	slt $t2, $a2, $a1  # if(posicao < quantidade)
	beq $t2, $zero, recursion # 4 -> para pular a próxima linha
	jr $ra # finaliza a funcao
	recursion:
	sw $ra, 0($sp)
	addi $a2, $a2, 4 # pos
	jal preenche_fibonacci

main:
	la $s0, vetor
	lw $t1, ($s0)
	
	add $a0, $a0, $s0 # vetor
	la $a1, quantidade # quantidade
	addi $a2, $zero, 0 # pos
	
	jal preenche_fibonacci


