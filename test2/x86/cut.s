.globl main
.globl _212_029_140_217_143_000_178_004_233_128_t_152_236_248B_
.data
/* memory for global registers */
Cmm_private_global_area:
_212_029_140_217_143_000_178_004_233_128_t_152_236_248B_:
.data
nocut:
.byte 110
.byte 111
.byte 32
.byte 99
.byte 117
.byte 116
.byte 61
.byte 37
.byte 100
.byte 10
.byte 0
ret:
.byte 114
.byte 101
.byte 116
.byte 117
.byte 114
.byte 110
.byte 10
.byte 0
.text
main:
leal -36(%esp), %esp
movl $4,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl (%eax),%eax
movl $8,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl (%eax),%eax
nop
leal 36(%esp), %eax
movl (%eax),%ecx
leal 36(%esp), %eax
movl %ecx,(%eax)
movl %ebx,20(%esp)
movl %ebp,16(%esp)
movl %esi,12(%esp)
movl %edi,8(%esp)
initialize_continuations_l10:
leal k_C8,%edx
movl $-8,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl %edx,(%eax)
movl $-36,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl $-4,%edx
leal 36(%esp), %ecx
addl %edx,%ecx
movl %eax,(%ecx)
movl $0,%eax
movl %eax,24(%esp)
nop
movl $-8,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
nop
call f
nop
nop
nop
nop
leal nocut,%edx
movl $-36,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl %edx,(%eax)
movl $-32,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl 24(%esp),%ecx
movl %ecx,(%eax)
nop
call printf
nop
nop
nop
nop
nop
movl 16(%esp),%ebp
movl 20(%esp),%ebx
movl 12(%esp),%esi
movl 8(%esp),%edi
leal 36(%esp), %eax
movl (%eax),%eax
movl $0,%ecx
leal 36(%esp), %edx
addl %ecx,%edx
movl %eax,(%edx)
leal 36(%esp), %esp
ret
k_C8:
nop
movl %eax,24(%esp)
nop
nop
movl $3,%ecx
leal nocut,%eax
addl %ecx,%eax
movl $-36,%edx
leal 36(%esp), %ecx
addl %edx,%ecx
movl %eax,(%ecx)
movl $-32,%ecx
leal 36(%esp), %eax
addl %ecx,%eax
movl 24(%esp),%ecx
movl %ecx,(%eax)
nop
call printf
nop
nop
nop
nop
nop
movl 16(%esp),%ebp
movl 20(%esp),%ebx
movl 12(%esp),%esi
movl 8(%esp),%edi
leal 36(%esp), %eax
movl (%eax),%eax
movl $0,%ecx
leal 36(%esp), %edx
addl %ecx,%edx
movl %eax,(%edx)
leal 36(%esp), %esp
ret
.text
f:
leal -4(%esp), %esp
nop
leal 4(%esp), %ecx
movl (%ecx),%ecx
movl %ecx,(%esp)
initialize_continuations_l23:
leal -4(%esp), %esp
movl $-8,%ecx
leal 8(%esp), %edx
addl %ecx,%edx
movl %eax,(%edx)
nop
call g
nop
nop
nop
leal -4(%esp), %esp
leal ret,%eax
movl $-8,%ecx
leal 8(%esp), %edx
addl %ecx,%edx
movl %eax,(%edx)
nop
call printf
nop
nop
nop
nop
nop
movl $0,%ecx
leal 4(%esp), %eax
addl %ecx,%eax
movl (%esp),%ecx
movl %ecx,(%eax)
leal 4(%esp), %esp
ret
.text
g:
leal -4(%esp), %esp
movl $4,%ecx
leal 4(%esp), %eax
addl %ecx,%eax
movl (%eax),%eax
nop
leal 4(%esp), %ecx
movl (%ecx),%edx
leal 4(%esp), %ecx
movl %edx,(%ecx)
initialize_continuations_l34:
nop
nop
call h
nop
nop
nop
nop
leal ret,%eax
movl $-4,%ecx
leal 4(%esp), %edx
addl %ecx,%edx
movl %eax,(%edx)
nop
call printf
nop
nop
nop
nop
nop
leal 4(%esp), %eax
movl (%eax),%eax
movl $0,%ecx
leal 4(%esp), %edx
addl %ecx,%edx
movl %eax,(%edx)
leal 4(%esp), %esp
ret
.text
h:
nop
movl %eax,%ecx
nop
movl %esp,%eax
movl (%eax),%eax
initialize_continuations_l45:
movl $99,%eax
movl $4,%ebx
movl %ecx,%edx
addl %ebx,%edx
movl (%edx),%edx
movl (%ecx),%ecx
movl %edx, %esp; jmp *%ecx