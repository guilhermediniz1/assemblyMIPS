.data
  a: .word 0,4,8,12,16,20,24,28,32,36,40,44 # Declarei o vetor com 12 posicoes
  
.text
  addi $s1, $zero, 7 # b = 7
  
  la $s0, a # carrega o vetor declarado para $s0
  lw $t1, 32($s0) # t1 = a[8]
  sub $t2, $t1, $s1
  sw $t2, 48($s0)