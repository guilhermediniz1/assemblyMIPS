##### Pseudo ####
# 
# if (a < b) f = g[12];else f = 1;
#
#################
main:
	addi $s1, $zero, 4 # a
	addi $s2, $zero, 5 # b
	addi $s0, $zero, 0
		
	addi $sp, $sp, -48
	addi $t1, $zero, 12
	sw   $t1, 48($sp)
	
	slt $t2, $s1, $s2
	bne $t2, $s0, ehMenor
  addi $s3, $zero, 1
  j end
	ehMenor:
		lw $t3, 48($sp)
		add $s3, $zero, $t3 # f = g[12]
end:
