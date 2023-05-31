##### Pseudo ####
# 
# if (i != j) 
#		f = g + h; 
# else 
#		f = g – h;
#
#########

main:
	addi $s0, $zero, 6 # i
	addi $s1, $zero, 6 # j
	addi $s2, $zero, 10 # g
	addi $s3, $zero, 20 # h
	
	bne $s0, $s1, saoDiferentes
  sub $s4, $s2, $s3 # f = g - h
  j end
	saoDiferentes:
		add $s4, $s2, $s3   # f = g + h
end:
