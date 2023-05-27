##### Pseudo ####
# 
# if (a > 2 || b < 3) c = 30;else c=40;
#
#################
main:
	addi $s1, $zero, 2 # a
	addi $s2, $zero, 3 # b
  li   $s0, 1
		
	slti $t1, $s1, 3
	slti $t2, $s2, 3
	
	beq  $t1, $zero, satisfies
	beq  $t2, $s0, satisfies 
	addi $s4, $zero, 40 # c = 40
	j end
	
	satisfies:
	addi $s4, $zero, 30 # c = 30
end:
