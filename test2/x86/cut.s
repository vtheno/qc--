.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY
.section .data
/* memory for global registers */
Cmm.globalsig.aQOYZWMPACZAJaMABGMOZeCCPY:
Cmm.global_area:
.section .data
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
.section .text
main:
	leal -36(%esp), %esp
	leal 36(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
	leal 36(%esp), %ecx
	movl $8,%edx
	addl %edx,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l13:
	leal k_C10,%ecx
	leal 36(%esp), %edx
	movl $-8,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
	leal 36(%esp), %ecx
	movl $-36,%edx
	addl %edx,%ecx
	leal 36(%esp), %edx
	movl $-4,%eax
	addl %eax,%edx
	movl %ecx,(%edx)
Lproc_body_start_l12:
	movl $0,%ecx
	leal 36(%esp), %eax
	movl $-8,%edx
	addl %edx,%eax
	movl %edi,24(%esp)
	movl %esi,20(%esp)
	movl %ebp,16(%esp)
	movl %ebx,12(%esp)
	movl %ecx,8(%esp)
	call f
Ljoin_l24:
	leal nocut,%edi
	leal 36(%esp), %esi
	movl $-36,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	leal 36(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl 8(%esp),%esi
	movl %esi,(%edi)
	call printf
Ljoin_l21:
	movl $1,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	movl 20(%esp),%esi
	movl 24(%esp),%edi
	leal 36(%esp), %esp
	ret
k_C10:
	leal nocut,%edi
	movl $3,%esi
	addl %esi,%edi
	leal 36(%esp), %esi
	movl $-36,%ebp
	addl %ebp,%esi
	movl %edi,(%esi)
	leal 36(%esp), %edi
	movl $-32,%esi
	addl %esi,%edi
	movl %edx,(%edi)
	call printf
Ljoin_l17:
	movl $0,%eax
	leal 36(%esp), %edx
	leal 36(%esp), %ecx
	movl $0,%edi
	addl %edi,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	movl 12(%esp),%ebx
	movl 16(%esp),%ebp
	movl 20(%esp),%esi
	movl 24(%esp),%edi
	leal 36(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l29:
.long 0
.section .pcmap
.long Ljoin_l24
.long Lframe_l30
.section .pcmap_data
Lframe_l30:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0xffffffe4
.long 0
.section .pcmap
.long Ljoin_l21
.long Lframe_l31
.section .pcmap_data
Lframe_l31:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long k_C10
.long Lframe_l32
.section .pcmap_data
Lframe_l32:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l33
.section .pcmap_data
Lframe_l33:
.long 0xffffffdc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l29
.long 8
.long 3
.long 0
.long 1
.long 0x40000007
.long 0xffffffe8
.long 0x40000009
.long 0xffffffec
.long 0x4000000a
.long 0xfffffff0
.long 0x4000000b
.long 0xfffffff4
.long 0
.long 0
.long 0
.long 0
.section .text
.section .text
f:
	leal -12(%esp), %esp
	leal 12(%esp), %ecx
	movl (%ecx),%ecx
Linitialize_continuations_l36:
Lproc_body_start_l35:
	leal 12(%esp), %edx
	movl %edi,4(%esp)
	movl $-12,%edi
	addl %edi,%edx
	movl %eax,(%edx)
	movl %ecx,8(%esp)
	call g
Ljoin_l43:
	leal ret,%edi
	leal 12(%esp), %eax
	movl $-12,%ecx
	addl %ecx,%eax
	movl %edi,(%eax)
	call printf
Ljoin_l40:
	leal 12(%esp), %edx
	movl $0,%ecx
	addl %ecx,%edx
	movl 8(%esp),%ecx
	movl %ecx,(%edx)
	movl 4(%esp),%edi
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l49:
.long 0
.section .pcmap
.long Ljoin_l43
.long Lframe_l50
.section .pcmap_data
Lframe_l50:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l49
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.section .pcmap
.long Ljoin_l40
.long Lframe_l51
.section .pcmap_data
Lframe_l51:
.long 0xfffffff4
.long 0x80000004
.long 0xfffffffc
.long Lstackdata_l49
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0xfffffff8
.long 0
.long 0
.section .text
.section .text
g:
	leal -4(%esp), %esp
	leal 4(%esp), %ecx
	movl $4,%edx
	addl %edx,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l54:
Lproc_body_start_l53:
	call h
Ljoin_l61:
	leal ret,%eax
	leal 4(%esp), %ecx
	movl $-4,%edx
	addl %edx,%ecx
	movl %eax,(%ecx)
	call printf
Ljoin_l58:
	leal 4(%esp), %edx
	leal 4(%esp), %ecx
	movl $0,%eax
	addl %eax,%ecx
	movl (%edx),%edx
	movl %edx,(%ecx)
	leal 4(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l67:
.long 0
.section .pcmap
.long Ljoin_l61
.long Lframe_l68
.section .pcmap_data
Lframe_l68:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l67
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .pcmap
.long Ljoin_l58
.long Lframe_l69
.section .pcmap_data
Lframe_l69:
.long 0xfffffffc
.long 0x80000004
.long 0x80000000
.long Lstackdata_l67
.long 8
.long 1
.long 0
.long 1
.long 0x40000007
.long 0x40000007
.long 0x40000009
.long 0x40000009
.long 0x4000000a
.long 0x4000000a
.long 0x4000000b
.long 0x4000000b
.long 0
.long 0
.section .text
.section .text
h:
	movl %esp,%ecx
	movl (%ecx),%ecx
Linitialize_continuations_l72:
Lproc_body_start_l71:
	movl $99,%edx
	movl $4,%edi
	movl %eax,%esi
	addl %edi,%esi
	movl (%esi),%edi
	movl (%eax),%esi
	movl %edi, %esp; jmp *%esi
.section .text
