" ============================================================================
" File: verbose.vim
" Maintainer: https://github.com/EvanQuan/vim-verbose/
" Version: 1.0.1
"
" Syntax highlighting for verbose files.
" ============================================================================

if exists("b:current_syntax")
  finish
endif

syntax match verboseNumber / \(NEGATIVE \)\?[MDCLXVI]\+ / contained
syntax keyword verboseType NUMBER CHARACTER contained
syntax keyword verboseOperator PUT REMOVE DUPLICATE SWAP ADD SUBTRACT MULTIPLY DIVIDE OUTPUT GET CONVERT contained
syntax keyword verboseStack STACK PERSON contained
syntax keyword verboseConditional IF contained
syntax keyword verboseParameter FIRST SECOND contained
syntax keyword verbosePreposition ONTO TOP contained
syntax match verboseStatementPush /PUT THE NUMBER \(NEGATIVE \)\?[MDCLXVI]\+ ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementPop /REMOVE THE CURRENT ELEMENT OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementDuplicate /GET THE FIRST ELEMENT OF THE PROGRAM STACK AND DUPLICATE IT AND PUT THE RESULT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementSwap /MOVE THE FIRST ELEMENT OF THE PROGRAM STACK TO THE SECOND ELEMENT'S PLACE AND THE SECOND ELEMENT OF THE STACK TO THE FIRST ELEMENT'S PLACE/ contains=CONTAINED
syntax match verboseStatementAdd /ADD THE FIRST ELEMENT OF THE PROGRAM STACK AND THE SECOND ELEMENT OF THE PROGRAM STACK TOGETHER AND PUT THE RESULT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementSubstract /SUBTRACT THE SECOND ELEMENT OF THE PROGRAM STACK FROM THE FIRST ELEMENT OF THE PROGRAM STACK AND PUT THE RESULT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementMultiply /MULTIPLY THE FIRST ELEMENT OF THE PROGRAM STACK BY THE SECOND ELEMENT OF THE PROGRAM STACK AND PUT THE RESULT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementDivide /DIVIDE THE FIRST ELEMENT OF THE PROGRAM STACK BY THE SECOND ELEMENT OF THE PROGRAM STACK AND PUT THE RESULT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementModulo /DIVIDE THE FIRST ELEMENT OF THE PROGRAM STACK BY THE SECOND ELEMENT OF THE PROGRAM STACK AND GET THE REMAINDER AND PUT THE REMAINDER ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementConditional /GET THE FIRST ELEMENT OF THE PROGRAM STACK AND THE SECOND ELEMENT OF THE PROGRAM STACK AND IF THE SECOND ELEMENT OF THE PROGRAM STACK IS NOT ZERO JUMP TO THE INSTRUCTION THAT IS THE CURRENT INSTRUCTION NUMBER AND THE FIRST ELEMENT ADDED TOGETHER'S RESULT/ contains=CONTAINED
syntax match verboseStatementInputCharacter /GET A CHARACTER TYPED IN BY THE CURRENT PERSON USING THIS PROGRAM AND GET THE CHARACTER'S ASCII CODE AND PUT THE RESULT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementInputNumber /GET A ROMAN NUMERAL TYPED IN BY THE CURRENT PERSON USING THIS PROGRAM AND PUT IT ONTO THE TOP OF THE PROGRAM STACK/ contains=CONTAINED
syntax match verboseStatementPrintCharacter /GET THE TOP ELEMENT OF THE STACK AND CONVERT IT TO AN ASCII CHARACTER AND OUTPUT IT FOR THE CURRENT PERSON USING THIS PROGRAM TO SEE/ contains=CONTAINED
syntax match verboseStatementPrintNumber /GET THE TOP ELEMENT OF THE STACK AND OUTPUT IT FOR THE CURRENT PERSON USING THIS PROGRAM TO SEE/ contains=CONTAINED

" highlight link verboseStatementAdd String
" highlight link verboseStatementPop String
" highlight link verboseStatementPush String
" highlight link verboseStatementSwap String
" highlight link verboseStatementDivide String
" highlight link verboseStatementModulo String
" highlight link verboseStatementMultiply String
" highlight link verboseStatementDuplicate String
" highlight link verboseStatementSubstract String
" highlight link verboseStatementConditional String
" highlight link verboseStatementInputNumber String
" highlight link verboseStatementPrintNumber String
" highlight link verboseStatementInputCharacter String
" highlight link verboseStatementPrintCharacter String
highlight link verboseType Type
highlight link verboseNumber Number
highlight link verboseOperator Function
highlight link verboseStack Keyword
highlight link verboseConditional Operator
highlight link verboseParameter String
highlight link verbosePreposition Operator

let b:current_syntax = "verbose"
