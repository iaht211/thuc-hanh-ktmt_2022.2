.eqv MONITOR_SCREEN 0x10010000 #Dia chi bat dau cua bo nho man hinh
.eqv RED 0x00FF0000 #Cac gia tri mau thuong su dung
.eqv GREEN 0x0000FF00
.eqv BLUE 0x000000FF
.eqv WHITE 0x00FFFFFF
.eqv YELLOW 0x00FFFF00
.text
 li $k0, MONITOR_SCREEN #Nap dia chi bat dau cua man hinh
 li $t0, RED
 sw $t0, 0($k0)
 nop
 li $t0, GREEN
 sw $t0, 36($k0)
 nop
 li $t0, BLUE
 sw $t0, 72($k0)
 nop
 li $t0, WHITE
 sw $t0, 108($k0)
 
 li $t0, RED
 sw $t0, 144($k0)
 nop
 li $t0, GREEN
 sw $t0, 180($k0)
 nop
 li $t0, BLUE
 sw $t0, 216($k0)
 nop
 li $t0, WHITE
 sw $t0, 252($k0)
