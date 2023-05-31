##### Pseudo ####
# 
# if (a < 20) f = g[2]+a;else f = 1;
#
#################
main:
	addi $s1, $zero, 21 # a
	addi $s0, $zero, 1
		
	addi $sp, $sp, -8
	addi $t1, $zero, 10
	sw   $t1, 8($sp)
	
	slti $t2, $s1, 20
	beq  $t2, $s0, ehMenor
	addi $s3, $zero, 1
	j end
	ehMenor:
    lw $t3, 8($sp)
    add $s3, $t3, $s1 # f = g[8]
end:
