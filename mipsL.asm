##### Pseudo ####
# 
# if (a > 2 && b < 3 || a == -1) c = 30;else c=40;
#
#################
main:
	li   $s0, 1
	li   $s1, -1
	
	addi $s2, $zero, 2 # a
	addi $s3, $zero, 3 # b
		
	slti $t1, $s2, 3
	slti $t2, $s3, 3
	
	beq  $s2, $s1, accept
	bne  $t1, $zero, reject
	bne  $t2, $s0, reject 
	j accept
	
	accept:
	addi $s4, $zero, 30 # c = 30
	j end
	
	reject:
	addi $s4, $zero, 40 # c = 40
end:
