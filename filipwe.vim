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
highlight StatusLine    guibg=#eeeeee   guifg=#5f80e3 gui=None  ctermbg=255 ctermfg=32
highlight StatusLineNC  guibg=#eeeeee   guifg=#444444 gui=None  ctermbg=255 ctermfg=238

highlight Todo          guibg=#278001   guifg=#eeeeee gui=None  ctermbg=34  ctermfg=255     " 34: green
highlight EndOfBuffer                   guifg=#f558be gui=None              ctermfg=165     " 165: pink
highlight NonText                       guifg=#f558be gui=None              ctermfg=165

highlight Normal        guibg=#eeeeee   guifg=#444444           ctermbg=255 ctermfg=238     " 238: dark grey
highlight Comment                       guifg=#999999                       ctermfg=244     " 244: light grey
highlight String                        guifg=#278001                       ctermfg=34

highlight Label                         guifg=#d63c44 gui=NONE              ctermfg=160     " 160: red
"def, class, with...
highlight Statement                     guifg=#d63c44 gui=NONE              ctermfg=160
 "#5fe37e #698060 Function names and types
highlight Function                      guifg=#5f80e3 gui=NONE              ctermfg=32      " 32: blue
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

highlight Error                         guifg=#00ff77                       ctermfg=48      " 48: spring green

"Import
highlight Include                       guifg=#ff8000                       ctermfg=208
highlight Number                        guifg=#921fbf                       ctermfg=92      " 92: dark violet
