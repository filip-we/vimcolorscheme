"Updated 2020-09-28
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif


let g:colors_name = "filipwe"



highlight Search                        guifg=Black                         ctermfg=Black
highlight Visual                        guifg=Black                         ctermfg=Black
highlight Cursor        guibg=#5f80e3                           ctermbg=32
highlight StatusLine    guibg=#5f80e3   guifg=#000000 gui=None  ctermbg=32  ctermfg=0
highlight StatusLineNC  guibg=#999999   guifg=#000000 gui=None  ctermbg=249 ctermfg=0

highlight Todo          guibg=#278001   guifg=#eeeeee gui=None  ctermbg=34  ctermfg=255
highlight EndOfBuffer                   guifg=#f558be gui=None              ctermfg=165
highlight NonText                       guifg=#f558be gui=None              ctermfg=165

highlight Normal        guibg=#eeeeee   guifg=#444444           ctermbg=255 ctermfg=238
highlight Comment                       guifg=#999999                       ctermfg=244
highlight String                        guifg=#278001                       ctermfg=34

highlight Label                         guifg=#d63c44 gui=NONE              ctermfg=160
"def, class, with...
highlight Statement                     guifg=#d63c44 gui=NONE              ctermfg=160
 "#5fe37e #698060 Function names and types
highlight Function                      guifg=#5f80e3 gui=NONE              ctermfg=32
highlight Type                          guifg=#5f80e3 gui=NONE              ctermfg=32

highlight Conditional                   guifg=#d63c44 gui=NONE              ctermfg=160
highlight Operator                      guifg=#d63c44                       ctermfg=160
"Iterations
highlight Repeat                        guifg=#d63c44 gui=NONE              ctermfg=160
highlight Special                       guifg=#f558be                       ctermfg=165

"Try catch
highlight Exception                     guifg=#d63c44                       ctermfg=160
"Exceptions
highlight Structure                     guifg=#ff8000 gui=NONE              ctermfg=208"Orange

highlight Error                         guifg=#00ff77                       ctermfg=48

"Import
highlight Include                       guifg=#ff8000                       ctermfg=208
highlight Number                        guifg=#921fbf                       ctermfg=92


