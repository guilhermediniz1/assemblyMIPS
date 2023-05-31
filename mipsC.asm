##### Pseudo ####
# 
# faça utilizando somente registradores nas instruções lw e sw, ou seja, endereço: 0(registrador)
# b = 7;
# a[12] = a[8] – b;
#
#########
.data
	a: .word 1,2,3,4,5,6,7,8,9,10,11,12,13

.text
  la $s0, a
  li $s1, 7 # b = 7

  lw   $t1, 32($s0) # t2 = a[8] = 0
  sub  $t3, $t1, $s1 # t3 = a[8] - b = 0 - 7
  sw   $t3, 48($s0) # a[12] = a[8] - b = -7
