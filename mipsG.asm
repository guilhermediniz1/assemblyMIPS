##### Pseudo ####
# 
# if (a > b) f = g[8];else f = 1;
#
#################
main:
	addi $s1, $zero, 8 # a
	addi $s2, $zero, 5 # b
	addi $s0, $zero, 1
		
	addi $sp, $sp, -32
	addi $t1, $zero, 10
	sw $t1, 32($sp)
	
	slt $t2, $s2, $s1
	beq $t2, $s0, isGreater
		addi $s3, $zero, 1
		j end
	isGreater:
		lw $t3, 32($sp)
		add $s3, $zero, $t3 # f = g[8]
end: