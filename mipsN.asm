.data
  vetor: .word 0,0,0,0,0,0 # Vetor "vazio" com 6 pos

.text
  main:
    la $a0, vetor         
    addi $a1, $zero, 6 # quantidade
    addi $a2, $zero, 0 # Posicao Inicial 
    add $s0, $zero, $a0 # Endereço inicial do vetor

    jal preencheFibonacci
    j end
    
  preencheFibonacci:
    addi $sp, $sp, -4
    sw $ra, ($sp)

    mul $t3, $a2, 4  		 
    add $a0, $s0, $t3 # Calcula e define o endereco atual de a0 (end. inicial + deslocamento das posições)

    slti $t0, $a2, 2
    beq $t0, $zero, else
    addi $t6, $zero, 1  # |
    sw $t6, ($a0)       # |_ Define vet[pos] = 1
    j verificaPosQuantidade
  else:
    addi $a0, $a0, -4
    lw $t4, ($a0)       	 # Valor de vet[pos-1] em $t4
      
    addi $a0, $a0, -4
    lw $t5, ($a0)          # Valor de vet[pos-2] em $t5

    add $t6, $t4, $t5      # Calcula vet[pos-1] + vet[pos-2]
      
    addi $a0, $a0, 8
    sw $t6, ($a0)          # Salva o resultado em vet[pos]

  verificaPosQuantidade:
    slt $t0, $a2, $a1 # (pos < quantidade)
    beq $t0, $zero, end

    lw $ra, ($sp)
    addi $sp, $sp, 4
      
    addi $a2, $a2, 1 # pos + 1

    jal preencheFibonacci
  end:
