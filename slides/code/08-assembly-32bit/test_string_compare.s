	.file	"test_string_compare.cpp"
	.intel_syntax noprefix
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.text
	.globl	compare_string
	.type	compare_string, @function
compare_string:
.LFB1021:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
.L3:
	mov	eax, DWORD PTR [ebp+8]
	movzx	eax, BYTE PTR [eax]
	test	al, al
	je	.L2
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	jne	.L2
	add	DWORD PTR [ebp+8], 1
	add	DWORD PTR [ebp+12], 1
	jmp	.L3
.L2:
	mov	eax, DWORD PTR [ebp+8]
	movzx	edx, BYTE PTR [eax]
	mov	eax, DWORD PTR [ebp+12]
	movzx	eax, BYTE PTR [eax]
	cmp	dl, al
	sete	al
	pop	ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1021:
	.size	compare_string, .-compare_string
	.section	.rodata
.LC0:
	.string	"Enter string 1: "
.LC1:
	.string	"Enter string 2: "
.LC2:
	.string	"The result is: "
	.text
	.globl	main
	.type	main, @function
main:
.LFB1022:
	.cfi_startproc
	.cfi_personality 0,__gxx_personality_v0
	.cfi_lsda 0,.LLSDA1022
	lea	ecx, [esp+4]
	.cfi_def_cfa 1, 0
	and	esp, -16
	push	DWORD PTR [ecx-4]
	push	ebp
	.cfi_escape 0x10,0x5,0x2,0x75,0
	mov	ebp, esp
	push	ebx
	push	ecx
	.cfi_escape 0xf,0x3,0x75,0x78,0x6
	.cfi_escape 0x10,0x3,0x2,0x75,0x7c
	sub	esp, 64
	mov	eax, DWORD PTR gs:20
	mov	DWORD PTR [ebp-12], eax
	xor	eax, eax
	sub	esp, 12
	lea	eax, [ebp-60]
	push	eax
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
.LEHE0:
	add	esp, 16
	sub	esp, 12
	lea	eax, [ebp-36]
	push	eax
.LEHB1:
	.cfi_escape 0x2e,0x10
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1Ev
.LEHE1:
	add	esp, 16
	sub	esp, 8
	push	OFFSET FLAT:.LC0
	push	OFFSET FLAT:_ZSt4cout
.LEHB2:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	esp, 16
	sub	esp, 8
	push	OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	push	eax
	call	_ZNSolsEPFRSoS_E
	add	esp, 16
	sub	esp, 8
	lea	eax, [ebp-60]
	push	eax
	push	OFFSET FLAT:_ZSt3cin
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	add	esp, 16
	sub	esp, 8
	push	OFFSET FLAT:.LC1
	push	OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	esp, 16
	sub	esp, 8
	push	OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	push	eax
	call	_ZNSolsEPFRSoS_E
	add	esp, 16
	sub	esp, 8
	lea	eax, [ebp-36]
	push	eax
	push	OFFSET FLAT:_ZSt3cin
	call	_ZStrsIcSt11char_traitsIcESaIcEERSt13basic_istreamIT_T0_ES7_RNSt7__cxx1112basic_stringIS4_S5_T1_EE
	add	esp, 16
	sub	esp, 12
	lea	eax, [ebp-36]
	push	eax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	add	esp, 16
	mov	ebx, eax
	sub	esp, 12
	lea	eax, [ebp-60]
	push	eax
	call	_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv
	add	esp, 16
	sub	esp, 8
	push	ebx
	push	eax
	call	compare_string
	add	esp, 16
	mov	BYTE PTR [ebp-61], al
	movzx	ebx, BYTE PTR [ebp-61]
	sub	esp, 8
	push	OFFSET FLAT:.LC2
	push	OFFSET FLAT:_ZSt4cout
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	add	esp, 16
	sub	esp, 8
	push	ebx
	push	eax
	call	_ZNSolsEb
	add	esp, 16
	sub	esp, 8
	push	OFFSET FLAT:_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_
	push	eax
	call	_ZNSolsEPFRSoS_E
.LEHE2:
	add	esp, 16
	mov	ebx, 0
	sub	esp, 12
	lea	eax, [ebp-36]
	push	eax
.LEHB3:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LEHE3:
	add	esp, 16
	sub	esp, 12
	lea	eax, [ebp-60]
	push	eax
.LEHB4:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LEHE4:
	add	esp, 16
	mov	eax, ebx
	mov	edx, DWORD PTR [ebp-12]
	xor	edx, DWORD PTR gs:20
	je	.L9
	jmp	.L12
.L11:
	mov	ebx, eax
	sub	esp, 12
	lea	eax, [ebp-36]
	push	eax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	esp, 16
	jmp	.L8
.L10:
	mov	ebx, eax
.L8:
	sub	esp, 12
	lea	eax, [ebp-60]
	push	eax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	add	esp, 16
	mov	eax, ebx
	sub	esp, 12
	push	eax
.LEHB5:
	call	_Unwind_Resume
.LEHE5:
.L12:
	call	__stack_chk_fail
.L9:
	lea	esp, [ebp-8]
	pop	ecx
	.cfi_restore 1
	.cfi_def_cfa 1, 0
	pop	ebx
	.cfi_restore 3
	pop	ebp
	.cfi_restore 5
	lea	esp, [ecx-4]
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1022:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1022:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1022-.LLSDACSB1022
.LLSDACSB1022:
	.uleb128 .LEHB0-.LFB1022
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1022
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB1022
	.uleb128 0
	.uleb128 .LEHB2-.LFB1022
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB1022
	.uleb128 0
	.uleb128 .LEHB3-.LFB1022
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L10-.LFB1022
	.uleb128 0
	.uleb128 .LEHB4-.LFB1022
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB5-.LFB1022
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE1022:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1074:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	cmp	DWORD PTR [ebp+8], 1
	jne	.L15
	cmp	DWORD PTR [ebp+12], 65535
	jne	.L15
	sub	esp, 12
	push	OFFSET FLAT:_ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	add	esp, 16
	sub	esp, 4
	push	OFFSET FLAT:__dso_handle
	push	OFFSET FLAT:_ZStL8__ioinit
	push	OFFSET FLAT:_ZNSt8ios_base4InitD1Ev
	call	__cxa_atexit
	add	esp, 16
.L15:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1074:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_compare_string, @function
_GLOBAL__sub_I_compare_string:
.LFB1075:
	.cfi_startproc
	push	ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	mov	ebp, esp
	.cfi_def_cfa_register 5
	sub	esp, 8
	sub	esp, 8
	push	65535
	push	1
	call	_Z41__static_initialization_and_destruction_0ii
	add	esp, 16
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1075:
	.size	_GLOBAL__sub_I_compare_string, .-_GLOBAL__sub_I_compare_string
	.section	.init_array,"aw"
	.align 4
	.long	_GLOBAL__sub_I_compare_string
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
	.section	.note.GNU-stack,"",@progbits
