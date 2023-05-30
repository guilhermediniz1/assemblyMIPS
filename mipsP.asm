main:
	add $s0, $zero, 3 # a= 3
	add $s1, $zero, 7 # b = 7
	
	add $a1, $zero, $s0
	add $a2, $zero, $s1
	jal f
	
	add $s2, $zero, $v0
	
	add $a1, $zero, $s2
	add $a2, $zero, $s0
	jal g
	
	add $s3, $zero, $v0
	
	j end

f:
	add $t0, $a1, $a2	
	
	# salva $ra ()
	sw $ra, 0($sp)
	jal g
	add $t1, $zero, $v0 # aux

	addi $t9, $zero, 2
	mul $t2, $t1, $t9 # aux * 2
	
	add $t0, $t0, $t2
	addi $v0, $t0, -5 
	
	lw $ra, 0($sp)	
	jr $ra
	
g:

	sw $t0, 12($sp)
	sw $t1, 16($sp)
	
	addi $t0, $zero, 3
	mul $t1, $a1, $t0 # n1 * 3
	sub $v0, $t1, $a2 # return (n1 * 3) - n2
	
	lw $t0, 12($sp)
	lw $t1, 16($sp)
	
	jr $ra
	
end:
	