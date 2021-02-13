" --------------------------------
" ----- Vim syntax file for ------
" ------- 6502 Assembly ----------
" --------------------------------
" --- Last changed 2021-02-13 ----
" --------------------------------

" quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

let s:cpo_save = &cpo
set cpo&vim

syn case ignore

" storage types
syn match asmType "\.long"
syn match asmType "\.ascii"
syn match asmType "\.asciz"
syn match asmType "\.byte"
syn match asmType "\.double"
syn match asmType "\.float"
syn match asmType "\.hword"
syn match asmType "\.int"
syn match asmType "\.octa"
syn match asmType "\.quad"
syn match asmType "\.short"
syn match asmType "\.single"
syn match asmType "\.space"
syn match asmType "\.string"
syn match asmType "\.word"

syn match asmInstruction    "[ |^]ADC\c[ |\n]"
syn match asmInstruction    "[ |^]AND\c[ |\n]"
syn match asmInstruction    "[ |^]ASL\c[ |\n]"
syn match asmInstruction    "[ |^]BCC\c[ |\n]"
syn match asmInstruction    "[ |^]BCS\c[ |\n]"
syn match asmInstruction    "[ |^]BEQ\c[ |\n]"
syn match asmInstruction    "[ |^]BIT\c[ |\n]"
syn match asmInstruction    "[ |^]BMI\c[ |\n]"
syn match asmInstruction    "[ |^]BNE\c[ |\n]"
syn match asmInstruction    "[ |^]BPL\c[ |\n]"
syn match asmInstruction    "[ |^]BRK\c[ |\n]"
syn match asmInstruction    "[ |^]BVC\c[ |\n]"
syn match asmInstruction    "[ |^]BVS\c[ |\n]"
syn match asmInstruction    "[ |^]CLC\c[ |\n]"
syn match asmInstruction    "[ |^]CLD\c[ |\n]"
syn match asmInstruction    "[ |^]CLI\c[ |\n]"
syn match asmInstruction    "[ |^]CLV\c[ |\n]"
syn match asmInstruction    "[ |^]CMP\c[ |\n]"
syn match asmInstruction    "[ |^]CPX\c[ |\n]"
syn match asmInstruction    "[ |^]CPY\c[ |\n]"
syn match asmInstruction    "[ |^]DEC\c[ |\n]"
syn match asmInstruction    "[ |^]DEX\c[ |\n]"
syn match asmInstruction    "[ |^]DEY\c[ |\n]"
syn match asmInstruction    "[ |^]EOR\c[ |\n]"
syn match asmInstruction    "[ |^]INC\c[ |\n]"
syn match asmInstruction    "[ |^]INX\c[ |\n]"
syn match asmInstruction    "[ |^]INY\c[ |\n]"
syn match asmInstruction    "[ |^]JMP\c[ |\n]"
syn match asmInstruction    "[ |^]JSR\c[ |\n]"
syn match asmInstruction    "[ |^]LDA\c[ |\n]"
syn match asmInstruction    "[ |^]LDX\c[ |\n]"
syn match asmInstruction    "[ |^]LDY\c[ |\n]"
syn match asmInstruction    "[ |^]LSR\c[ |\n]"
syn match asmInstruction    "[ |^]NOP\c[ |\n]"
syn match asmInstruction    "[ |^]ORA\c[ |\n]"
syn match asmInstruction    "[ |^]PHA\c[ |\n]"
syn match asmInstruction    "[ |^]PHP\c[ |\n]"
syn match asmInstruction    "[ |^]PLA\c[ |\n]"
syn match asmInstruction    "[ |^]PLP\c[ |\n]"
syn match asmInstruction    "[ |^]ROL\c[ |\n]"
syn match asmInstruction    "[ |^]ROR\c[ |\n]"
syn match asmInstruction    "[ |^]RTI\c[ |\n]"
syn match asmInstruction    "[ |^]RTS\c[ |\n]"
syn match asmInstruction    "[ |^]SBC\c[ |\n]"
syn match asmInstruction    "[ |^]SEC\c[ |\n]"
syn match asmInstruction    "[ |^]SED\c[ |\n]"
syn match asmInstruction    "[ |^]SEI\c[ |\n]"
syn match asmInstruction    "[ |^]STA\c[ |\n]"
syn match asmInstruction    "[ |^]STX\c[ |\n]"
syn match asmInstruction    "[ |^]STY\c[ |\n]"
syn match asmInstruction    "[ |^]TAX\c[ |\n]"
syn match asmInstruction    "[ |^]TAY\c[ |\n]"
syn match asmInstruction    "[ |^]TSX\c[ |\n]"
syn match asmInstruction    "[ |^]TXA\c[ |\n]"
syn match asmInstruction    "[ |^]TXS\c[ |\n]"
syn match asmInstruction    "[ |^]TYA\c[ |\n]"

syn match asmLabel		"[a-z_][a-z0-9_]*:"he=e-1

syn match asmAddress		"\#"

syn match decNumber		"[1-9]\d*"
syn match hexNumber		"[$][0-9a-fA-F]\+"
syn match binNumber		"[%][0-1]*"

syn keyword asmTodo		contained TODO

syn match asmComment		"[;].*" contains=asmTodo

syn match asmInclude		"\.include"
syn match asmCond		"\.if"
syn match asmCond		"\.else"
syn match asmCond		"\.endif"
syn match asmMacro		"\.macro"
syn match asmMacro		"\.endm"

" Assembler directives start with a '.' and may contain upper case (e.g.,
" .ABORT), numbers (e.g., .p2align), dash (e.g., .app-file) and underscore in
" CFI directives (e.g., .cfi_startproc). This will also match labels starting
" with '.', including the GCC auto-generated '.L' labels.
syn match asmDirective		"\.[A-Za-z][0-9A-Za-z-_]*"

syntax region asmString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link asmString String

syn case match

hi def link asmLabel	Label
hi def link asmComment	Comment
hi def link asmTodo	Todo
hi def link asmDirective	Structure

hi def link asmInclude	Include
hi def link asmCond	PreCondit
hi def link asmMacro	Macro

hi def link asmAddress	Structure
hi def link hexNumber	Number
hi def link decNumber	Number
hi def link binNumber	Number

hi def link asmInstruction    Function
hi def link asmType	Type


let b:current_syntax = "asm6502"

let &cpo = s:cpo_save
unlet s:cpo_save
