.globl main
.globl Cmm.global_area
.globl Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec
.section .data
/* memory for global registers */
.align 4
Cmm.globalsig.VKSBdZcIGPIUdLCTLDKJKdWRec:
Cmm.global_area:
.skip 4
.section .text
main:
	leal -12(%esp), %esp
	movl $4,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
	movl $8,%eax
	leal 12(%esp), %ecx
	addl %eax,%ecx
	movl (%ecx),%eax
Linitialize_continuations_l4:
Lproc_body_start_l3:
	movl $99,%eax
	leal Cmm.global_area,%ecx
	movl %eax,(%ecx)
	leal nvalue,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl $-8,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l17:
	leal callincn,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	call printf
Ljoin_l14:
	call incn
Ljoin_l11:
	leal nvalue,%eax
	movl $-12,%ecx
	leal 12(%esp), %edx
	addl %ecx,%edx
	movl %eax,(%edx)
	leal Cmm.global_area,%eax
	movl $-8,%edx
	leal 12(%esp), %ecx
	addl %edx,%ecx
	movl (%eax),%edx
	movl %edx,(%ecx)
	call printf
Ljoin_l8:
	movl $0,%eax
	leal 12(%esp), %ecx
	movl $0,%edx
	movl %ebx,8(%esp)
	leal 12(%esp), %ebx
	addl %edx,%ebx
	movl (%ecx),%edx
	movl %edx,(%ebx)
	movl 8(%esp),%ebx
	leal 12(%esp), %esp
	ret
.section .pcmap_data
Lstackdata_l23:
.long 0
.section .pcmap
.long Ljoin_l17
.long Lframe_l24
.section .pcmap_data
Lframe_l24:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.long Ljoin_l14
.long Lframe_l25
.section .pcmap_data
Lframe_l25:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.long Ljoin_l11
.long Lframe_l26
.section .pcmap_data
Lframe_l26:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.long Ljoin_l8
.long Lframe_l27
.section .pcmap_data
Lframe_l27:
.long 0xfffffff4
.long 0x80000004
.long 0x80000000
.long Lstackdata_l23
.long 0x80000008
.long 0x80000002
.long 0x80000000
.long 0x80000000
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
.section .data
nvalue:
.byte 103
.byte 108
.byte 111
.byte 98
.byte 97
.byte 108
.byte 32
.byte 118
.byte 97
.byte 114
.byte 105
.byte 97
.byte 98
.byte 108
.byte 101
.byte 32
.byte 110
.byte 32
.byte 61
.byte 61
.byte 32
.byte 37
.byte 100
.byte 10
.byte 0
callincn:
.byte 99
.byte 97
.byte 108
.byte 108
.byte 105
.byte 110
.byte 103
.byte 32
.byte 101
.byte 120
.byte 116
.byte 101
.byte 114
.byte 110
.byte 97
.byte 108
.byte 32
.byte 102
.byte 117
.byte 110
.byte 99
.byte 116
.byte 105
.byte 111
.byte 110
.byte 32
.byte 105
.byte 110
.byte 99
.byte 110
.byte 46
.byte 46
.byte 46
.byte 10
.byte 0
