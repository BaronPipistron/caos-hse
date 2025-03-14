    .intel_syntax noprefix
    .global main
main:
    call readi64
    mov r12, rax // A
    call readi64
    mov r13, rax // B
    call readi64
    mov r14, rax // C
    call readi64
    mov r15, rax // D

    sal r13, 1   // 2 * B

    mov rbx, r14 // C_copy
    sal rbx, 4   // 16 * C
    add r14, rbx // 16 * C + C == 17 * C

    sub r12, r13 // A - 2 * B
    add r12, r14 // + 17 * C

    mov rdi, r15
    call writei64

    mov rdi, r12
    call writei64

    call finish

