##### Pseudo ####
# 
# contar_quantos_impares(vetor, tamanho, pos) {
# 	if (pos == tamanho) return 0;
# 	else
# 	if (vetor[pos] % 2 == 0)
# 	return 1+contar_quantos_impares(vetor, tamanho, pos+1);
# 	else
# 	return contar_quantos_impares(vetor, tamanho, pos+1);
# }
#
#################

# OBS.: Na verdade a função do pseudo-código está contando os números pares
# para contar os ímpares deve ser => if(vetor[pos] % 2 != 0)

.data
	vetor: .word   1,2,3,7,5,13,7,8,9,10,11	# Temos 8 ímpares

.text    
  main:
    la      $a0, vetor
    add    $t4, $zero, $a0 # Salva endereco inicial do vetor
    addi 		$a1, $zero, 11 # Tamanho
    addi 		$a2, $zero, 0  # Posição inicial
    jal contarQuantosImpares
    add $s0, $zero, $v0 # Resultado da contagem (retorno da função)
    j end
    
  contarQuantosImpares:
    addi	$sp, $sp, -4
    sw 		$ra, 0($sp)
    
    bne 	$a2, $a1, else # if(pos == tamanho)
    add 	$v0, $v0, $zero
    
    addi	$sp, $sp, 4
    lw 		$ra, 0($sp)
    jr $ra 
	
	else:
    # if(vetor[pos] % 2 == 0)
    mulu $t3, $a2, 4
    add $a0, $t4, $t3 # Calcula o deslocamento
    lw $t0, ($a0)
    srl $t1, $t0, 1   
    sll $t1, $t1, 1   
    sub $t2, $t0, $t1     	
    beqz $t2, ehPar
    addi $a2, $a2, 1 # pos + 1
    addi $v0, $v0, 1
    jal contarQuantosImpares
	ehPar:
    addi $a2, $a2, 1 # pos + 1
    jal contarQuantosImpares
	
  end:
