	.file	"LenCounter.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.section	.text._ZNSt11char_traitsIcE6assignERcRKc,"axG",@progbits,_ZNSt11char_traitsIcE6assignERcRKc,comdat
	.weak	_ZNSt11char_traitsIcE6assignERcRKc
	.type	_ZNSt11char_traitsIcE6assignERcRKc, @function
_ZNSt11char_traitsIcE6assignERcRKc:
.LFB336:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movzbl	(%rax), %edx
	movq	-8(%rbp), %rax
	movb	%dl, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE336:
	.size	_ZNSt11char_traitsIcE6assignERcRKc, .-_ZNSt11char_traitsIcE6assignERcRKc
	.section	.text._ZNSt12_Base_bitsetILm1EEC2Ey,"axG",@progbits,_ZNSt12_Base_bitsetILm1EEC5Ey,comdat
	.align 2
	.weak	_ZNSt12_Base_bitsetILm1EEC2Ey
	.type	_ZNSt12_Base_bitsetILm1EEC2Ey, @function
_ZNSt12_Base_bitsetILm1EEC2Ey:
.LFB1037:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1037:
	.size	_ZNSt12_Base_bitsetILm1EEC2Ey, .-_ZNSt12_Base_bitsetILm1EEC2Ey
	.weak	_ZNSt12_Base_bitsetILm1EEC1Ey
	.set	_ZNSt12_Base_bitsetILm1EEC1Ey,_ZNSt12_Base_bitsetILm1EEC2Ey
	.section	.text._ZNSt12_Base_bitsetILm1EE11_S_whichbitEm,"axG",@progbits,_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm,comdat
	.weak	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	.type	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm, @function
_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm:
.LFB1041:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	andl	$63, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1041:
	.size	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm, .-_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm
	.section	.text._ZNSt12_Base_bitsetILm1EE10_S_maskbitEm,"axG",@progbits,_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm,comdat
	.weak	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	.type	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm, @function
_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm:
.LFB1042:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE11_S_whichbitEm@PLT
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1042:
	.size	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm, .-_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm
	.section	.text._ZNKSt12_Base_bitsetILm1EE10_M_getwordEm,"axG",@progbits,_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm,comdat
	.align 2
	.weak	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	.type	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm, @function
_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm:
.LFB1044:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1044:
	.size	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm, .-_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm
	.section	.text._ZStorSt13_Ios_OpenmodeS_,"axG",@progbits,_ZStorSt13_Ios_OpenmodeS_,comdat
	.weak	_ZStorSt13_Ios_OpenmodeS_
	.type	_ZStorSt13_Ios_OpenmodeS_, @function
_ZStorSt13_Ios_OpenmodeS_:
.LFB1277:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	movl	-4(%rbp), %eax
	orl	-8(%rbp), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1277:
	.size	_ZStorSt13_Ios_OpenmodeS_, .-_ZStorSt13_Ios_OpenmodeS_
	.section	.text._ZNKSt8ios_base6getlocEv,"axG",@progbits,_ZNKSt8ios_base6getlocEv,comdat
	.align 2
	.weak	_ZNKSt8ios_base6getlocEv
	.type	_ZNKSt8ios_base6getlocEv, @function
_ZNKSt8ios_base6getlocEv:
.LFB1309:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	leaq	208(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6localeC1ERKS_@PLT
	movq	-8(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1309:
	.size	_ZNKSt8ios_base6getlocEv, .-_ZNKSt8ios_base6getlocEv
	.section	.text._ZNKSt5ctypeIcE5widenEc,"axG",@progbits,_ZNKSt5ctypeIcE5widenEc,comdat
	.align 2
	.weak	_ZNKSt5ctypeIcE5widenEc
	.type	_ZNKSt5ctypeIcE5widenEc, @function
_ZNKSt5ctypeIcE5widenEc:
.LFB1429:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movl	%esi, %eax
	movb	%al, -12(%rbp)
	movq	-8(%rbp), %rax
	movzbl	56(%rax), %eax
	testb	%al, %al
	je	.L14
	movzbl	-12(%rbp), %eax
	movzbl	%al, %eax
	movq	-8(%rbp), %rdx
	cltq
	movzbl	57(%rdx,%rax), %eax
	jmp	.L15
.L14:
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movsbl	-12(%rbp), %ecx
	movq	-8(%rbp), %rdx
	movl	%ecx, %esi
	movq	%rdx, %rdi
	call	*%rax
	nop
.L15:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1429:
	.size	_ZNKSt5ctypeIcE5widenEc, .-_ZNKSt5ctypeIcE5widenEc
	.text
	.align 2
	.globl	_ZN3vuu10LenCounterC2Ev
	.type	_ZN3vuu10LenCounterC2Ev, @function
_ZN3vuu10LenCounterC2Ev:
.LFB2194:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movw	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 6(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2194:
	.size	_ZN3vuu10LenCounterC2Ev, .-_ZN3vuu10LenCounterC2Ev
	.globl	_ZN3vuu10LenCounterC1Ev
	.set	_ZN3vuu10LenCounterC1Ev,_ZN3vuu10LenCounterC2Ev
	.align 2
	.globl	_ZN3vuu10LenCounter5resetEv
	.type	_ZN3vuu10LenCounter5resetEv, @function
_ZN3vuu10LenCounter5resetEv:
.LFB2196:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movl	$0, (%rax)
	movq	-8(%rbp), %rax
	movw	$0, 4(%rax)
	movq	-8(%rbp), %rax
	movw	$0, 6(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2196:
	.size	_ZN3vuu10LenCounter5resetEv, .-_ZN3vuu10LenCounter5resetEv
	.align 2
	.globl	_ZNK3vuu10LenCounter16getNumCodePointsEv
	.type	_ZNK3vuu10LenCounter16getNumCodePointsEv, @function
_ZNK3vuu10LenCounter16getNumCodePointsEv:
.LFB2197:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzwl	4(%rax), %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2197:
	.size	_ZNK3vuu10LenCounter16getNumCodePointsEv, .-_ZNK3vuu10LenCounter16getNumCodePointsEv
	.section	.text._ZNSt6bitsetILm8EEC1Ey,"axG",@progbits,_ZNSt6bitsetILm8EEC1Ey,comdat
	.align 2
	.weak	_ZNSt6bitsetILm8EEC1Ey
	.type	_ZNSt6bitsetILm8EEC1Ey, @function
_ZNSt6bitsetILm8EEC1Ey:
.LFB2201:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy@PLT
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Base_bitsetILm1EEC2Ey@PLT
	nop
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2201:
	.size	_ZNSt6bitsetILm8EEC1Ey, .-_ZNSt6bitsetILm8EEC1Ey
	.section	.text._ZN3vuu18InvByteInCodePointC2EOS0_,"axG",@progbits,_ZN3vuu18InvByteInCodePointC5EOS0_,comdat
	.align 2
	.weak	_ZN3vuu18InvByteInCodePointC2EOS0_
	.type	_ZN3vuu18InvByteInCodePointC2EOS0_, @function
_ZN3vuu18InvByteInCodePointC2EOS0_:
.LFB2203:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11logic_errorC2ERKS_@PLT
	movq	_ZTVN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2203:
	.size	_ZN3vuu18InvByteInCodePointC2EOS0_, .-_ZN3vuu18InvByteInCodePointC2EOS0_
	.weak	_ZN3vuu18InvByteInCodePointC1EOS0_
	.set	_ZN3vuu18InvByteInCodePointC1EOS0_,_ZN3vuu18InvByteInCodePointC2EOS0_
	.section	.rodata
	.align 8
.LC0:
	.string	"The second byte of a 2-byte code-point is invalid."
	.align 8
.LC1:
	.string	"\tCodepoint # [not including this one = "
	.align 8
.LC2:
	.string	"\t# of bytes processed (not including this one) = "
.LC3:
	.string	"\tThe value of this byte is: "
	.align 8
.LC4:
	.string	"The second byte of a 3-byte code-point is invalid."
	.align 8
.LC5:
	.string	"# of bytes processed (not including this one) = "
	.align 8
.LC6:
	.string	"The third byte of a 3-byte code-point is invalid."
	.align 8
.LC7:
	.string	"The second byte of a 4-byte code-point is invalid."
	.align 8
.LC8:
	.string	"The third byte of a 4-byte code-point is invalid."
	.align 8
.LC9:
	.string	"The fourth byte of a 4-byte code-point is invalid."
	.align 8
.LC10:
	.string	"Object was moved from! Don't use it!"
	.text
	.align 2
	.globl	_ZN3vuu10LenCounterclEc
	.type	_ZN3vuu10LenCounterclEc, @function
_ZN3vuu10LenCounterclEc:
.LFB2198:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2198
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$792, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -792(%rbp)
	movl	%esi, %eax
	movb	%al, -796(%rbp)
	movsbq	-796(%rbp), %rdx
	leaq	-264(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6bitsetILm8EEC1Ey@PLT
	movq	-792(%rbp), %rax
	movl	(%rax), %eax
	cmpl	$7, %eax
	ja	.L23
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L25(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L25(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
	.section	.rodata
	.align 4
	.align 4
.L25:
	.long	.L32-.L25
	.long	.L31-.L25
	.long	.L30-.L25
	.long	.L29-.L25
	.long	.L28-.L25
	.long	.L27-.L25
	.long	.L26-.L25
	.long	.L24-.L25
	.text
.L32:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB0:
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L33
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-792(%rbp), %rax
	movw	%dx, 4(%rax)
	jmp	.L110
.L33:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L35
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L35
	leaq	-264(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L35
	movl	$1, %eax
	jmp	.L36
.L35:
	movl	$0, %eax
.L36:
	testb	%al, %al
	je	.L37
	movq	-792(%rbp), %rax
	movl	$1, (%rax)
	jmp	.L110
.L37:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L38
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L38
	leaq	-264(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L38
	leaq	-264(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L38
	movl	$1, %eax
	jmp	.L39
.L38:
	movl	$0, %eax
.L39:
	testb	%al, %al
	je	.L40
	movq	-792(%rbp), %rax
	movl	$2, (%rax)
	jmp	.L110
.L40:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L41
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L41
	leaq	-264(%rbp), %rax
	movl	$5, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L41
	leaq	-264(%rbp), %rax
	movl	$4, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L41
	leaq	-264(%rbp), %rax
	movl	$3, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L41
	movl	$1, %eax
	jmp	.L42
.L41:
	movl	$0, %eax
.L42:
	testb	%al, %al
	je	.L110
	movq	-792(%rbp), %rax
	movl	$4, (%rax)
	jmp	.L110
.L31:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L43
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L43
	movl	$1, %eax
	jmp	.L44
.L43:
	movl	$0, %eax
.L44:
	testb	%al, %al
	je	.L45
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-792(%rbp), %rax
	movw	%dx, 4(%rax)
	movq	-792(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L23
.L45:
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_@PLT
	movl	%eax, %edx
	leaq	-784(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE0:
	leaq	-784(%rbp), %rax
	addq	$16, %rax
	leaq	.LC0(%rip), %rsi
	movq	%rax, %rdi
.LEHB1:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC2(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-256(%rbp), %rax
	leaq	-784(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE1:
	leaq	-256(%rbp), %rdx
	leaq	-288(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB2:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE2:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB3:
	call	__cxa_throw@PLT
.LEHE3:
.L30:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB4:
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L47
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L47
	movl	$1, %eax
	jmp	.L48
.L47:
	movl	$0, %eax
.L48:
	testb	%al, %al
	je	.L49
	movq	-792(%rbp), %rax
	movl	$3, (%rax)
	jmp	.L23
.L49:
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_@PLT
	movl	%eax, %edx
	leaq	-784(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE4:
	leaq	-784(%rbp), %rax
	addq	$16, %rax
	leaq	.LC4(%rip), %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-224(%rbp), %rax
	leaq	-784(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE5:
	leaq	-224(%rbp), %rdx
	leaq	-304(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB6:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE6:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-304(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB7:
	call	__cxa_throw@PLT
.LEHE7:
.L29:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB8:
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L51
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L51
	movl	$1, %eax
	jmp	.L52
.L51:
	movl	$0, %eax
.L52:
	testb	%al, %al
	je	.L53
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-792(%rbp), %rax
	movw	%dx, 4(%rax)
	movq	-792(%rbp), %rax
	movl	$0, (%rax)
	jmp	.L23
.L53:
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_@PLT
	movl	%eax, %edx
	leaq	-784(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE8:
	leaq	-784(%rbp), %rax
	addq	$16, %rax
	leaq	.LC6(%rip), %rsi
	movq	%rax, %rdi
.LEHB9:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-192(%rbp), %rax
	leaq	-784(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE9:
	leaq	-192(%rbp), %rdx
	leaq	-320(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB10:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE10:
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-320(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB11:
	call	__cxa_throw@PLT
.LEHE11:
.L28:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB12:
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L55
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L55
	movl	$1, %eax
	jmp	.L56
.L55:
	movl	$0, %eax
.L56:
	testb	%al, %al
	je	.L57
	movq	-792(%rbp), %rax
	movl	$5, (%rax)
	jmp	.L23
.L57:
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_@PLT
	movl	%eax, %edx
	leaq	-784(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE12:
	leaq	-784(%rbp), %rax
	addq	$16, %rax
	leaq	.LC7(%rip), %rsi
	movq	%rax, %rdi
.LEHB13:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-160(%rbp), %rax
	leaq	-784(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE13:
	leaq	-160(%rbp), %rdx
	leaq	-336(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB14:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE14:
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB15:
	call	__cxa_throw@PLT
.LEHE15:
.L27:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB16:
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L59
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L59
	movl	$1, %eax
	jmp	.L60
.L59:
	movl	$0, %eax
.L60:
	testb	%al, %al
	je	.L61
	movq	-792(%rbp), %rax
	movl	$6, (%rax)
	jmp	.L23
.L61:
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_@PLT
	movl	%eax, %edx
	leaq	-784(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE16:
	leaq	-784(%rbp), %rax
	addq	$16, %rax
	leaq	.LC8(%rip), %rsi
	movq	%rax, %rdi
.LEHB17:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-128(%rbp), %rax
	leaq	-784(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE17:
	leaq	-128(%rbp), %rdx
	leaq	-352(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB18:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE18:
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-352(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB19:
	call	__cxa_throw@PLT
.LEHE19:
.L26:
	leaq	-264(%rbp), %rax
	movl	$7, %esi
	movq	%rax, %rdi
.LEHB20:
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	testb	%al, %al
	je	.L63
	leaq	-264(%rbp), %rax
	movl	$6, %esi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE4testEm@PLT
	xorl	$1, %eax
	testb	%al, %al
	je	.L63
	movl	$1, %eax
	jmp	.L64
.L63:
	movl	$0, %eax
.L64:
	testb	%al, %al
	je	.L65
	movq	-792(%rbp), %rax
	movl	$0, (%rax)
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-792(%rbp), %rax
	movw	%dx, 4(%rax)
	jmp	.L23
.L65:
	movl	$8, %esi
	movl	$16, %edi
	call	_ZStorSt13_Ios_OpenmodeS_@PLT
	movl	%eax, %edx
	leaq	-784(%rbp), %rax
	movl	%edx, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1ESt13_Ios_Openmode@PLT
.LEHE20:
	leaq	-784(%rbp), %rax
	addq	$16, %rax
	leaq	.LC9(%rip), %rsi
	movq	%rax, %rdi
.LEHB21:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC1(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	4(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC5(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	cwtl
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEs@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC3(%rip), %rsi
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	leaq	-264(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE@PLT
	movq	%rax, %rdx
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	-96(%rbp), %rax
	leaq	-784(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv@PLT
.LEHE21:
	leaq	-96(%rbp), %rdx
	leaq	-368(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB22:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE22:
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-368(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB23:
	call	__cxa_throw@PLT
.LEHE23:
.L24:
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcEC1Ev@PLT
	leaq	-17(%rbp), %rdx
	leaq	-64(%rbp), %rax
	leaq	.LC10(%rip), %rsi
	movq	%rax, %rdi
.LEHB24:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_@PLT
.LEHE24:
	leaq	-64(%rbp), %rdx
	leaq	-384(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
.LEHB25:
	call	_ZN3vuu18InvByteInCodePointC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE@PLT
.LEHE25:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movl	$16, %edi
	call	__cxa_allocate_exception@PLT
	movq	%rax, %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZN3vuu18InvByteInCodePointC1EOS0_@PLT
	movq	_ZN3vuu18InvByteInCodePointD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdx
	movq	_ZTIN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	movq	%rbx, %rdi
.LEHB26:
	call	__cxa_throw@PLT
.LEHE26:
.L110:
	nop
.L23:
	movq	-792(%rbp), %rax
	movzwl	6(%rax), %eax
	addl	$1, %eax
	movl	%eax, %edx
	movq	-792(%rbp), %rax
	movw	%dx, 6(%rax)
	jmp	.L109
.L89:
	movq	%rax, %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L68
.L90:
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	jmp	.L68
.L88:
	movq	%rax, %rbx
.L68:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB27:
	call	_Unwind_Resume@PLT
.L92:
	movq	%rax, %rbx
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L71
.L93:
	movq	%rax, %rbx
	leaq	-304(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	jmp	.L71
.L91:
	movq	%rax, %rbx
.L71:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L95:
	movq	%rax, %rbx
	leaq	-192(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L74
.L96:
	movq	%rax, %rbx
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	jmp	.L74
.L94:
	movq	%rax, %rbx
.L74:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L98:
	movq	%rax, %rbx
	leaq	-160(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L77
.L99:
	movq	%rax, %rbx
	leaq	-336(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	jmp	.L77
.L97:
	movq	%rax, %rbx
.L77:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L101:
	movq	%rax, %rbx
	leaq	-128(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L80
.L102:
	movq	%rax, %rbx
	leaq	-352(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	jmp	.L80
.L100:
	movq	%rax, %rbx
.L80:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L104:
	movq	%rax, %rbx
	leaq	-96(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L83
.L105:
	movq	%rax, %rbx
	leaq	-368(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	jmp	.L83
.L103:
	movq	%rax, %rbx
.L83:
	leaq	-784(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L107:
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	jmp	.L86
.L106:
	movq	%rax, %rbx
.L86:
	leaq	-17(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIcED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L108:
	movq	%rax, %rbx
	leaq	-384(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE27:
.L109:
	addq	$792, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2198:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2198:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2198-.LLSDACSB2198
.LLSDACSB2198:
	.uleb128 .LEHB0-.LFB2198
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2198
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L88-.LFB2198
	.uleb128 0
	.uleb128 .LEHB2-.LFB2198
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L89-.LFB2198
	.uleb128 0
	.uleb128 .LEHB3-.LFB2198
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L90-.LFB2198
	.uleb128 0
	.uleb128 .LEHB4-.LFB2198
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB2198
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L91-.LFB2198
	.uleb128 0
	.uleb128 .LEHB6-.LFB2198
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L92-.LFB2198
	.uleb128 0
	.uleb128 .LEHB7-.LFB2198
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L93-.LFB2198
	.uleb128 0
	.uleb128 .LEHB8-.LFB2198
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB9-.LFB2198
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L94-.LFB2198
	.uleb128 0
	.uleb128 .LEHB10-.LFB2198
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L95-.LFB2198
	.uleb128 0
	.uleb128 .LEHB11-.LFB2198
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L96-.LFB2198
	.uleb128 0
	.uleb128 .LEHB12-.LFB2198
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB2198
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L97-.LFB2198
	.uleb128 0
	.uleb128 .LEHB14-.LFB2198
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L98-.LFB2198
	.uleb128 0
	.uleb128 .LEHB15-.LFB2198
	.uleb128 .LEHE15-.LEHB15
	.uleb128 .L99-.LFB2198
	.uleb128 0
	.uleb128 .LEHB16-.LFB2198
	.uleb128 .LEHE16-.LEHB16
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB17-.LFB2198
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L100-.LFB2198
	.uleb128 0
	.uleb128 .LEHB18-.LFB2198
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L101-.LFB2198
	.uleb128 0
	.uleb128 .LEHB19-.LFB2198
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L102-.LFB2198
	.uleb128 0
	.uleb128 .LEHB20-.LFB2198
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB21-.LFB2198
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L103-.LFB2198
	.uleb128 0
	.uleb128 .LEHB22-.LFB2198
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L104-.LFB2198
	.uleb128 0
	.uleb128 .LEHB23-.LFB2198
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L105-.LFB2198
	.uleb128 0
	.uleb128 .LEHB24-.LFB2198
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L106-.LFB2198
	.uleb128 0
	.uleb128 .LEHB25-.LFB2198
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L107-.LFB2198
	.uleb128 0
	.uleb128 .LEHB26-.LFB2198
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L108-.LFB2198
	.uleb128 0
	.uleb128 .LEHB27-.LFB2198
	.uleb128 .LEHE27-.LEHB27
	.uleb128 0
	.uleb128 0
.LLSDACSE2198:
	.text
	.size	_ZN3vuu10LenCounterclEc, .-_ZN3vuu10LenCounterclEc
	.align 2
	.globl	_ZN3vuu10LenCounterC2ERKS0_
	.type	_ZN3vuu10LenCounterC2ERKS0_, @function
_ZN3vuu10LenCounterC2ERKS0_:
.LFB2206:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movzwl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 4(%rax)
	movq	-16(%rbp), %rax
	movzwl	6(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 6(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2206:
	.size	_ZN3vuu10LenCounterC2ERKS0_, .-_ZN3vuu10LenCounterC2ERKS0_
	.globl	_ZN3vuu10LenCounterC1ERKS0_
	.set	_ZN3vuu10LenCounterC1ERKS0_,_ZN3vuu10LenCounterC2ERKS0_
	.align 2
	.globl	_ZN3vuu10LenCounterC2EOS0_
	.type	_ZN3vuu10LenCounterC2EOS0_, @function
_ZN3vuu10LenCounterC2EOS0_:
.LFB2209:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	$7, -12(%rbp)
	movq	-32(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-1, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt8exchangeIsiET_RS0_OT0_@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 4(%rax)
	movl	$-1, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	6(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt8exchangeIsiET_RS0_OT0_@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 6(%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2209:
	.size	_ZN3vuu10LenCounterC2EOS0_, .-_ZN3vuu10LenCounterC2EOS0_
	.globl	_ZN3vuu10LenCounterC1EOS0_
	.set	_ZN3vuu10LenCounterC1EOS0_,_ZN3vuu10LenCounterC2EOS0_
	.align 2
	.globl	_ZN3vuu10LenCounteraSERKS0_
	.type	_ZN3vuu10LenCounteraSERKS0_, @function
_ZN3vuu10LenCounteraSERKS0_:
.LFB2211:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	cmpq	-16(%rbp), %rax
	je	.L114
	movq	-16(%rbp), %rax
	movl	(%rax), %edx
	movq	-8(%rbp), %rax
	movl	%edx, (%rax)
	movq	-16(%rbp), %rax
	movzwl	4(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 4(%rax)
	movq	-16(%rbp), %rax
	movzwl	6(%rax), %edx
	movq	-8(%rbp), %rax
	movw	%dx, 6(%rax)
.L114:
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2211:
	.size	_ZN3vuu10LenCounteraSERKS0_, .-_ZN3vuu10LenCounteraSERKS0_
	.align 2
	.globl	_ZN3vuu10LenCounteraSEOS0_
	.type	_ZN3vuu10LenCounteraSEOS0_, @function
_ZN3vuu10LenCounteraSEOS0_:
.LFB2212:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	cmpq	-32(%rbp), %rax
	je	.L117
	movl	$7, -12(%rbp)
	movq	-32(%rbp), %rax
	leaq	-12(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	$-1, -8(%rbp)
	movq	-32(%rbp), %rax
	leaq	4(%rax), %rdx
	leaq	-8(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt8exchangeIsiET_RS0_OT0_@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 4(%rax)
	movl	$-1, -4(%rbp)
	movq	-32(%rbp), %rax
	leaq	6(%rax), %rdx
	leaq	-4(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZSt8exchangeIsiET_RS0_OT0_@PLT
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, 6(%rax)
	movq	-32(%rbp), %rax
	movl	$7, (%rax)
.L117:
	movq	-24(%rbp), %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2212:
	.size	_ZN3vuu10LenCounteraSEOS0_, .-_ZN3vuu10LenCounteraSEOS0_
	.section	.text._ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy,"axG",@progbits,_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy,comdat
	.weak	_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy
	.type	_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy, @function
_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy:
.LFB2449:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movzbl	%al, %eax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2449:
	.size	_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy, .-_ZNSt13_Sanitize_valILm8ELb1EE18_S_do_sanitize_valEy
	.section	.rodata
.LC11:
	.string	"bitset::test"
	.section	.text._ZNKSt6bitsetILm8EE4testEm,"axG",@progbits,_ZNKSt6bitsetILm8EE4testEm,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm8EE4testEm
	.type	_ZNKSt6bitsetILm8EE4testEm, @function
_ZNKSt6bitsetILm8EE4testEm:
.LFB2450:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	leaq	.LC11(%rip), %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE8_M_checkEmPKc@PLT
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE15_Unchecked_testEm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2450:
	.size	_ZNKSt6bitsetILm8EE4testEm, .-_ZNKSt6bitsetILm8EE4testEm
	.section	.text._ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.weak	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.type	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, @function
_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE:
.LFB2465:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2465
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev@PLT
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	subq	$24, %rax
	movq	(%rax), %rax
	movq	%rax, %rdx
	movq	-72(%rbp), %rax
	addq	%rax, %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt8ios_base6getlocEv@PLT
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
.LEHB28:
	call	_ZSt9use_facetISt5ctypeIcEERKT_RKSt6locale@PLT
.LEHE28:
	movq	%rax, -24(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev@PLT
	movq	-24(%rbp), %rax
	movl	$49, %esi
	movq	%rax, %rdi
.LEHB29:
	call	_ZNKSt5ctypeIcE5widenEc@PLT
	movsbl	%al, %ebx
	movq	-24(%rbp), %rax
	movl	$48, %esi
	movq	%rax, %rdi
	call	_ZNKSt5ctypeIcE5widenEc@PLT
	movsbl	%al, %edx
	leaq	-64(%rbp), %rsi
	movq	-80(%rbp), %rax
	movl	%ebx, %ecx
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_@PLT
	leaq	-64(%rbp), %rdx
	movq	-72(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE@PLT
.LEHE29:
	movq	%rax, %rbx
	nop
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	jmp	.L129
.L127:
	movq	%rax, %rbx
	leaq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6localeD1Ev@PLT
	jmp	.L126
.L128:
	movq	%rax, %rbx
.L126:
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev@PLT
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB30:
	call	_Unwind_Resume@PLT
.LEHE30:
.L129:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2465:
	.section	.gcc_except_table
.LLSDA2465:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2465-.LLSDACSB2465
.LLSDACSB2465:
	.uleb128 .LEHB28-.LFB2465
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L127-.LFB2465
	.uleb128 0
	.uleb128 .LEHB29-.LFB2465
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L128-.LFB2465
	.uleb128 0
	.uleb128 .LEHB30-.LFB2465
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
.LLSDACSE2465:
	.section	.text._ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,"axG",@progbits,_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE,comdat
	.size	_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE, .-_ZStlsIcSt11char_traitsIcELm8EERSt13basic_ostreamIT_T0_ES6_RKSt6bitsetIXT1_EE
	.section	.text._ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_,"axG",@progbits,_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_,comdat
	.weak	_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_
	.type	_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_, @function
_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_:
.LFB2470:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2470:
	.size	_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_, .-_ZSt8exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_
	.section	.text._ZSt8exchangeIsiET_RS0_OT0_,"axG",@progbits,_ZSt8exchangeIsiET_RS0_OT0_,comdat
	.weak	_ZSt8exchangeIsiET_RS0_OT0_
	.type	_ZSt8exchangeIsiET_RS0_OT0_, @function
_ZSt8exchangeIsiET_RS0_OT0_:
.LFB2471:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@PLT
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__exchangeIsiET_RS0_OT0_@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2471:
	.size	_ZSt8exchangeIsiET_RS0_OT0_, .-_ZSt8exchangeIsiET_RS0_OT0_
	.section	.rodata
	.align 8
.LC12:
	.string	"%s: __position (which is %zu) >= _Nb (which is %zu)"
	.section	.text._ZNKSt6bitsetILm8EE8_M_checkEmPKc,"axG",@progbits,_ZNKSt6bitsetILm8EE8_M_checkEmPKc,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm8EE8_M_checkEmPKc
	.type	_ZNKSt6bitsetILm8EE8_M_checkEmPKc, @function
_ZNKSt6bitsetILm8EE8_M_checkEmPKc:
.LFB2580:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$7, -16(%rbp)
	jbe	.L136
	movq	-16(%rbp), %rdx
	movq	-24(%rbp), %rax
	movl	$8, %ecx
	movq	%rax, %rsi
	leaq	.LC12(%rip), %rdi
	movl	$0, %eax
	call	_ZSt24__throw_out_of_range_fmtPKcz@PLT
.L136:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2580:
	.size	_ZNKSt6bitsetILm8EE8_M_checkEmPKc, .-_ZNKSt6bitsetILm8EE8_M_checkEmPKc
	.section	.text._ZNKSt6bitsetILm8EE15_Unchecked_testEm,"axG",@progbits,_ZNKSt6bitsetILm8EE15_Unchecked_testEm,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm8EE15_Unchecked_testEm
	.type	_ZNKSt6bitsetILm8EE15_Unchecked_testEm, @function
_ZNKSt6bitsetILm8EE15_Unchecked_testEm:
.LFB2581:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	-32(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt12_Base_bitsetILm1EE10_M_getwordEm@PLT
	movq	%rax, %rbx
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Base_bitsetILm1EE10_S_maskbitEm@PLT
	andq	%rbx, %rax
	testq	%rax, %rax
	setne	%al
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2581:
	.size	_ZNKSt6bitsetILm8EE15_Unchecked_testEm, .-_ZNKSt6bitsetILm8EE15_Unchecked_testEm
	.section	.text._ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_,"axG",@progbits,_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_,comdat
	.align 2
	.weak	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	.type	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_, @function
_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_:
.LFB2609:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movl	%edx, %eax
	movl	%ecx, %edx
	movb	%al, -36(%rbp)
	movl	%edx, %eax
	movb	%al, -40(%rbp)
	movsbl	-36(%rbp), %edx
	movq	-32(%rbp), %rax
	movl	$8, %esi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6assignEmc@PLT
	movq	$8, -8(%rbp)
.L142:
	cmpq	$0, -8(%rbp)
	je	.L143
	movq	-8(%rbp), %rax
	leaq	-1(%rax), %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNKSt6bitsetILm8EE15_Unchecked_testEm@PLT
	testb	%al, %al
	je	.L141
	movl	$8, %eax
	subq	-8(%rbp), %rax
	movq	%rax, %rdx
	movq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEixEm@PLT
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZNSt11char_traitsIcE6assignERcRKc@PLT
.L141:
	subq	$1, -8(%rbp)
	jmp	.L142
.L143:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2609:
	.size	_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_, .-_ZNKSt6bitsetILm8EE17_M_copy_to_stringIcSt11char_traitsIcESaIcEEEvRNSt7__cxx1112basic_stringIT_T0_T1_EES7_S7_
	.section	.text._ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE,"axG",@progbits,_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE,comdat
	.weak	_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE
	.type	_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE, @function
_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE:
.LFB2612:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2612:
	.size	_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE, .-_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE
	.section	.text._ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_,"axG",@progbits,_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_,comdat
	.weak	_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_
	.type	_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_, @function
_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_:
.LFB2614:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2614:
	.size	_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_, .-_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_
	.section	.text._ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_,"axG",@progbits,_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_,comdat
	.weak	_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_
	.type	_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_, @function
_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_:
.LFB2613:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRN3vuu10LenCounter5StateEEONSt16remove_referenceIT_E4typeEOS5_@PLT
	movl	(%rax), %eax
	movl	%eax, -4(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIN3vuu10LenCounter5StateEEOT_RNSt16remove_referenceIS3_E4typeE@PLT
	movl	(%rax), %edx
	movq	-24(%rbp), %rax
	movl	%edx, (%rax)
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2613:
	.size	_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_, .-_ZSt10__exchangeIN3vuu10LenCounter5StateES2_ET_RS3_OT0_
	.section	.text._ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,"axG",@progbits,_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE,comdat
	.weak	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.type	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, @function
_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE:
.LFB2615:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2615:
	.size	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE, .-_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE
	.section	.text._ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_,"axG",@progbits,_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_,comdat
	.weak	_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_
	.type	_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_, @function
_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_:
.LFB2617:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2617:
	.size	_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_, .-_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_
	.section	.text._ZSt10__exchangeIsiET_RS0_OT0_,"axG",@progbits,_ZSt10__exchangeIsiET_RS0_OT0_,comdat
	.weak	_ZSt10__exchangeIsiET_RS0_OT0_
	.type	_ZSt10__exchangeIsiET_RS0_OT0_, @function
_ZSt10__exchangeIsiET_RS0_OT0_:
.LFB2616:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt4moveIRsEONSt16remove_referenceIT_E4typeEOS2_@PLT
	movzwl	(%rax), %eax
	movw	%ax, -2(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt7forwardIiEOT_RNSt16remove_referenceIS0_E4typeE@PLT
	movl	(%rax), %eax
	movl	%eax, %edx
	movq	-24(%rbp), %rax
	movw	%dx, (%rax)
	movzwl	-2(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2616:
	.size	_ZSt10__exchangeIsiET_RS0_OT0_, .-_ZSt10__exchangeIsiET_RS0_OT0_
	.weak	_ZTVN3vuu18InvByteInCodePointE
	.section	.data.rel.ro._ZTVN3vuu18InvByteInCodePointE,"awG",@progbits,_ZTVN3vuu18InvByteInCodePointE,comdat
	.align 8
	.type	_ZTVN3vuu18InvByteInCodePointE, @object
	.size	_ZTVN3vuu18InvByteInCodePointE, 40
_ZTVN3vuu18InvByteInCodePointE:
	.quad	0
	.quad	_ZTIN3vuu18InvByteInCodePointE
	.quad	_ZN3vuu18InvByteInCodePointD1Ev
	.quad	_ZN3vuu18InvByteInCodePointD0Ev
	.quad	_ZNKSt11logic_error4whatEv
	.section	.text._ZN3vuu18InvByteInCodePointD2Ev,"axG",@progbits,_ZN3vuu18InvByteInCodePointD5Ev,comdat
	.align 2
	.weak	_ZN3vuu18InvByteInCodePointD2Ev
	.type	_ZN3vuu18InvByteInCodePointD2Ev, @function
_ZN3vuu18InvByteInCodePointD2Ev:
.LFB2806:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	_ZTVN3vuu18InvByteInCodePointE@GOTPCREL(%rip), %rax
	leaq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt11logic_errorD2Ev@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2806:
	.size	_ZN3vuu18InvByteInCodePointD2Ev, .-_ZN3vuu18InvByteInCodePointD2Ev
	.weak	_ZN3vuu18InvByteInCodePointD1Ev
	.set	_ZN3vuu18InvByteInCodePointD1Ev,_ZN3vuu18InvByteInCodePointD2Ev
	.section	.text._ZN3vuu18InvByteInCodePointD0Ev,"axG",@progbits,_ZN3vuu18InvByteInCodePointD5Ev,comdat
	.align 2
	.weak	_ZN3vuu18InvByteInCodePointD0Ev
	.type	_ZN3vuu18InvByteInCodePointD0Ev, @function
_ZN3vuu18InvByteInCodePointD0Ev:
.LFB2808:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN3vuu18InvByteInCodePointD1Ev@PLT
	movq	-8(%rbp), %rax
	movl	$16, %esi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2808:
	.size	_ZN3vuu18InvByteInCodePointD0Ev, .-_ZN3vuu18InvByteInCodePointD0Ev
	.weak	_ZTIN3vuu18InvByteInCodePointE
	.section	.data.rel.ro._ZTIN3vuu18InvByteInCodePointE,"awG",@progbits,_ZTIN3vuu18InvByteInCodePointE,comdat
	.align 8
	.type	_ZTIN3vuu18InvByteInCodePointE, @object
	.size	_ZTIN3vuu18InvByteInCodePointE, 24
_ZTIN3vuu18InvByteInCodePointE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSN3vuu18InvByteInCodePointE
	.quad	_ZTISt11logic_error
	.weak	_ZTSN3vuu18InvByteInCodePointE
	.section	.rodata._ZTSN3vuu18InvByteInCodePointE,"aG",@progbits,_ZTSN3vuu18InvByteInCodePointE,comdat
	.align 16
	.type	_ZTSN3vuu18InvByteInCodePointE, @object
	.size	_ZTSN3vuu18InvByteInCodePointE, 27
_ZTSN3vuu18InvByteInCodePointE:
	.string	"N3vuu18InvByteInCodePointE"
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.ident	"GCC: (SUSE Linux) 8.2.1 20180831 [gcc-8-branch revision 264010]"
	.section	.note.GNU-stack,"",@progbits