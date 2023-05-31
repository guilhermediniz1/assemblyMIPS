##### Pseudo ####
# 
# if (i == j) f = g +h; else f = g – h;
#
#########

main:
	addi $s0, $zero, 6 # i
	addi $s1, $zero, 3 # j
	addi $s2, $zero, 10 # g
	addi $s3, $zero, 20 # h
	
	bne $s0, $s1, else
  add $s4, $s2, $s3   # f = g + h
  j end
	else:
    sub $s4, $s2, $s3 # f = g - h
end:
