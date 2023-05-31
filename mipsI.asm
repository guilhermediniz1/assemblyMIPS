##### Pseudo ####
# 
# if (a > 20) f = b + c; else f = 1;
#
#################
main:
	addi $s1, $zero, 5 # a
	addi $s2, $zero, 10 # b
	addi $s3, $zero, 20 # c
	addi $s0, $zero, 0
		
	slti $t2, $s1, 21
	beq  $t2, $s0, ehMaior
	addi $s4, $zero, 1
	j end
	ehMaior:
    add $s4, $s2, $s3 # f = b + c
end:
