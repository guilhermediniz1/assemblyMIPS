##### Pseudo ####
# 
# while (vet[pos] != -1)
# 	vet1[pos] = vet2[pos];
#  	pos++;
# }
#
#################
.data
	vet1: .word 1,2,3,4,-1,6
	vet2: .word 9,9,9,9,5,5
	
.text
	la $s0, vet1
	la $s1, vet2
	
	addi $s3, $zero, -1 # constante
	lw $t1, 0($s0)
	bne $t1, $s3, while
	j end
	while:
    lw $t0, ($s1)
    sw $t0, ($s0)
    addi $s0, $s0, 4
    addi $s1, $s1, 4
    lw $t1, ($s0)
    bne $t1, $s3, while
end:
