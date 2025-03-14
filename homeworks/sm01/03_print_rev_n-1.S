    .intel_syntax noprefix
    .global main

main:
    call readi32
    mov r12d, eax

greater:
    cmp r12d, 0
    jl  less

    mov edi, r12d
    call writei32
    dec r12d

    jmp greater

less:
    call finish