.data
mess1: .asciiz "\nnhap vao so luong sinh vien: "
mess2: .asciiz "\nnhap vao ten sinh vien: "
mess3: .asciiz "\nnhap vao diem sinh vien: \0 "
numStudents: .word 0
students: .space 400
enter: .asciiz "\n"

.text
main:
    # Nhập vào số lượng sinh viên
    li $v0, 4
    la $a0, mess1
    syscall

    li $v0, 5
    syscall
    move $t0, $v0
    sw $t0, numStudents

    # Nhập thông tin sinh viên và điểm
    li $t1, 0       # i
    la $s0, students    # a[]

loop_in:
    slt $t2, $t1, $t0
    beq $t2, $0, print

    mul $t2, $t1, 16
    add $t3, $s0, $t2

    # Nhập tên sinh viên và lưu vào mảng
    li $v0, 4
    la $a0, mess2
    syscall

    li $v0, 8
    move $a0, $t3
    li $a1, 100
    syscall

    # Nhập điểm sinh viên
    li $v0, 4
    la $a0, mess3
    syscall

    li $v0, 5
    syscall

    sw $v0, -8($t3)

    addi $t1, $t1, 1
    j loop_in


print:
    # In ra danh sách sinh viên
    li $t1, 0
    la $s0, students

loop_print:
    slt $t2, $t1, $t0
    beq $t2, $0, end_print

    li $v0, 4
    la $a0, enter
    syscall

    mul $t2, $t1, 16
    add $t3, $s0, $t2

    li $v0, 4
    la $a0, 0($t3)
    syscall

    li $v0, 1
    lw $a0, -8($t3)
    syscall

    addi $t1, $t1, 1
    j loop_print

end_print:

    # Kết thúc chương trình
    li $v0, 10
    syscall