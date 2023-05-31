##### Pseudo ####
# 
#  while (vetor[i] == k) i++;
#
#################
.data
	vetor: .word 1,1,1,1,1,1,5,6 # 8 pos
	k: .word 1
	
.text

	la $s0, vetor
	
	la $t0, k
	lw $s1, ($t0) # pegando o valor de K
	
	add $s3, $zero, $zero # i = 0
	
	add $t2, $zero, $s0 # Posicao inicial de $s0
	
	lw $t1, ($s0)	
	beq $t1, $s1, while
	
	j end
	
	while:
    addi $s3, $s3, 4 # i++;
    add $s0, $t2, $s3
    lw $t1, ($s0)
    beq $t1, $s1, while
	end:
