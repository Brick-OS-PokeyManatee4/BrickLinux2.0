.globl _start
.text
_start:
    call main

.globl _syscall
_syscall:
    movq %ebx, %eax
    movq %ecx, %ebx
    movq %rdx, %ecx
    movq %rcx, %edx
    movq %edi, %esi
    movq %ebp, %edi
    movq 8(%esp), %ebp
    syscall
    ret
