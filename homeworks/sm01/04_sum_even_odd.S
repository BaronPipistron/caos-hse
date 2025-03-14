    .intel_syntax noprefix
    .global main

main:
    mov r12, 0 // even sum
    mov r13, 0 // odd sum

read:
    call readi64
    jc end_input

    mov r14, rax
    and r14, 1

    cmp r14, 0
    je even
    jne odd

even:
    add r12, rax
    jmp read

odd:
    add r13, rax
    jmp read

end_input:
    mov rdi, r12
    call writei64
    
    mov rdi, r13
    call writei64

    call finish