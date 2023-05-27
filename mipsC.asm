##### Pseudo ####
# 
# faça utilizando somente registradores nas instruções lw e sw, ou seja, endereço: 0(registrador)
# b = 7;
# a[12] = a[8] – b;
#
#########

addi $sp, $sp, -48 # Declaration of a[12]

addi $t1, $zero, 7 # b = 7

lw   $t2, 32($sp) # t2 = a[8] = 0
sub  $t3, $t2, $t1 # t3 = a[8] - b = 0 - 7
sw   $t3, 48($sp) # a[12] = a[8] - b = -7