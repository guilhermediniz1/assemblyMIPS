##### Pseudo ####
# 
# if (a > 2 && b < 3) c = 30;else c=40;
#
#################
main:
	addi $s1, $zero, 5 # a
	addi $s2, $zero, 1 # b
  li   $s0, 1
		
	slti $t1, $s1, 3
	slti $t2, $s2, 3
	
	bne  $t1, $zero, rejeita
	bne  $t2, $s0, rejeita 
	addi $s4, $zero, 30 # c = 30
	j end
	
	rejeita:
    addi $s4, $zero, 40 # c = 40
end:
