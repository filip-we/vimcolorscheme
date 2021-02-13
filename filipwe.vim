"Updated 2020-09-09
set background=light
hi clear
if exists("syntax_on")
  syntax reset
endif


let g:colors_name = "filipwe"



highlight Search        guifg=Black
highlight Visual        guifg=Black
highlight Cursor        guibg=#5f80e3
highlight StatusLine    guibg=#5f80e3 guifg=#000000 gui=None
highlight StatusLineNC  guibg=#999999 guifg=#000000 gui=None

highlight Todo          guibg=#278001 guifg=#eeeeee gui=None
highlight EndOfBuffer   guifg=#f558be gui=None
highlight NonText       guifg=#f558be gui=None

highlight Normal        guifg=#444444 guibg=#eeeeee
highlight Comment       guifg=#999999
highlight String        guifg=#278001


highlight Statement     guifg=#d63c44 gui=NONE"def, class, with...
highlight Function      guifg=#5f80e3 gui=NONE "#5fe37e #698060 Function names and types

highlight Conditional   guifg=#d63c44 gui=NONE
highlight Operator      guifg=#d63c44
highlight Repeat        guifg=#d63c44 gui=NONE"Loops
highlight Special       guifg=#f558be "00ff77 "?

highlight Exception     guifg=#d63c44 "try, catch
highlight Structure     guifg=#ff8000 gui=NONE"Exceptions "

highlight Error         guifg=#00ff77"?

highlight Include       guifg=#ff8000 "Import
highlight Type          guifg=Black
highlight Number        guifg=#921fbf " 921fbf
