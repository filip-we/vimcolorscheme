" VIM-rc-file primarily for Unix-like OS:es
" By filipwe
" Last updated 2021-03-07

" Sets indents to four spaces, as well as converting tabs to 4 spaces
set smartindent
set shiftwidth=4
set expandtab
set tabstop=4

" Consistent indents in new lines
set smarttab

" Displays '-' for trailing space, '>-' for tabs and '_' for non breakable space
set listchars=tab:>-,trail:-,nbsp:_
set list

set guifont=Lucida\ Console:h10
set ruler

" Colors and colorscheme
set t_Co=256
syntax on
colorscheme filipwe

" Bg-color. Should be after loading colorscheme
set background=light

" Syntax for asm6502
augroup asm6502
    au!
    autocmd BufNewFile,BufRead *.s set syntax=asm6502
augroup END

