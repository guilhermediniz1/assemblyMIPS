addi $a0, $zero, 6 # valor testado 
jal fatorial
add $s0, $zero, $v0
j end

fatorial:
  addi $sp, $sp, -4
  sw $ra, 0($sp)

  # Pula para o caso base: fatorial(0)
  beq $a0, $zero, casoBase
  
  # Caso Recursivo: fatorial(n) = n * fatorial(n-1)
  addi $sp, $sp, -4
  sw $a0, 0($sp)  
  
  addi $a0, $a0, -1
  jal fatorial
  
  lw $a0, 0($sp) 
  addi $sp, $sp, 4
  
  mul $v0, $a0, $v0 
  
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  
  jr $ra

casoBase:
  addi $v0, $zero, 1 # Define o retorno do caso base
  lw $ra, 0($sp)
  addi $sp, $sp, 4
  jr $ra
end:
