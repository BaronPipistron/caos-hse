    .intel_syntax noprefix
    .global main

main:
    mov r12, 0 // bit count
    mov r13, 0 // loop iterations
    call readi64

loop_start:
    cmp r13, 64
    je end_loop

    inc r13

    mov r14, rax
    and r14, 1

    shr rax, 1

    cmp r14, 1
    je incremetn_ans

    jmp loop_start

increment_ans:
    inc r12
    jmp loop_start

end_loop:
    mov rdi, r12
    call writei64

    call finish
