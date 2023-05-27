.data
  h: .word 0,1,2,3,4,5,6,7,8 # Declarei h

.text
j main

swap:
  addi $sp, $sp, -4 # Aloca espaço para aux na pilha
  sw   $a0, 0($sp)
  add  $a0, $zero, $a1
  lw   $a1, 0($sp)

  add  $v0, $zero, $a0
  add  $v1, $zero, $a1
  addi $sp, $sp, 4 # Desalocar espaco na pilha
  jr   $ra

main:
  addi $s1, $zero, 20 # a = 20
  addi $s2, $zero, 80 # b = 80
 
  la   $s0, h # s0 será usado para o vetor h
  lw   $t1, 32($s0) # t1 = h[8]

  add  $t2, $s1, $t1 # a + h[8]
  sub  $s3, $t2, $s2 # c = a + h[8] - b

  add  $a0, $zero, $s1 # Parametros 
  add  $a1, $zero, $s3

  jal swap
  
  add  $s1, $zero, $v0
  add  $s3, $zero, $v1 