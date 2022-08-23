	.file	"Pregunta6.cpp"
	.intel_syntax noprefix
	.text
	.globl	_Z4div5ii
	.type	_Z4div5ii, @function
// Damos por declarada la funsion
_Z4div5ii:
.LFB0:
	endbr32
	// Convenciones de llamada
	push	ebp
	mov	ebp, esp
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR 8[ebp]
	cdq
	idiv	DWORD PTR 12[ebp]
	pop	ebp
	ret
.LFE0:
	.globl	_Z4div4i
// Damos por declarada la funsion
_Z4div4i:
.LFB1:
	endbr32
	// Convenciones de llamada
	push	ebp
	mov	ebp, esp
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	eax, DWORD PTR 8[ebp]
	lea	edx, 3[eax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	pop	ebp
	ret
.LFE1:
	.globl	main
// Esta es la funsion main 
main:
.LFB2:
	endbr32
	push	ebp
	mov	ebp, esp
	sub	esp, 32
	call	__x86.get_pc_thunk.ax
	add	eax, OFFSET FLAT:_GLOBAL_OFFSET_TABLE_
	mov	DWORD PTR -24[ebp], 11148
	mov	eax, DWORD PTR -24[ebp]
	lea	edx, 7[eax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 3
	mov	DWORD PTR -20[ebp], eax
	mov	eax, DWORD PTR -24[ebp]
	lea	edx, 3[eax]
	test	eax, eax
	cmovs	eax, edx
	sar	eax, 2
	mov	DWORD PTR -16[ebp], eax
	mov	eax, DWORD PTR -24[ebp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -12[ebp], eax
	push	4
	push	5
	// Aqui se esta haciendo el llamado a la funsion
	call	_Z4div5ii
	add	esp, 8
	mov	DWORD PTR -8[ebp], eax
	push	5
	// Aqui se esta haciendo el llamado a la funsion
	call	_Z4div4i
	add	esp, 4
	mov	DWORD PTR -4[ebp], eax
	mov	eax, 0
	leave
	ret
.LFE2:
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
__x86.get_pc_thunk.ax:
.LFB3:
	mov	eax, DWORD PTR [esp]
	ret
.LFE3:
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 4
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 4
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 4
4:
