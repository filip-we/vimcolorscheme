"Updated 2022-04-29
hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "filipwe"

" Light colors
if &background == 'light'
    " ---------------------------------------------------------------------------------------------------------
    " ---------------------------------------------- Light Colors ---------------------------------------------
    " ---------------------------------------------------------------------------------------------------------
    " Cursor (not working on Windows at least)
let palette = {
    \   'cursor':           'guifg=#278001 ctermfg=34  guibg=#f558be ctermbg=165',
    \   'gui-fg-1':         'guifg=#5f80e3 ctermfg=32',
    \   'gui-bg-1':         '                          guibg=#5f80e3 ctermbg=32',
    \
    \   'status-line':      'guifg=#5f80e3 ctermfg=32  guibg=#eeeeee ctermbg=255',
    \   'status-line-nc':   'guifg=#444444 ctermfg=238 guibg=#eeeeee ctermbg=255',
    \   'menu':             'guifg=#dadada ctermfg=253 guibg=#5f80e3 ctermbg=32',
    \   'search':           '                          guibg=#5f80e3 ctermbg=32',
    \   'tab':              'guifg=#dadada ctermfg=253 guibg=#585858 ctermbg=240 term=None cterm=None',
    \   'tab-sel':          'guifg=#dadada ctermfg=253 guibg=#5f80e3 ctermbg=66',
    \   'tab-nc':           'guifg=#585858 ctermfg=240 guibg=#5f80e3 ctermbg=32',
    \
    \   'todo':             'guifg=#eeeeee ctermfg=255 guibg=#278001 ctermbg=34',
    \   'non-text':         'guifg=#0000d7 ctermfg=20',
    \
    \   'normal':           'guifg=#eeeeee ctermfg=238',
    \   'comment':          'guifg=#999999 ctermfg=244',
    \   'string':           'guifg=#278001 ctermfg=34',
    \   'number':           'guifg=#921fbf ctermfg=92',
    \
    \   'py-key-words' :    'guifg=#5f80e3 ctermfg=160',
    \   'fn-names' :        'guifg=#d63c44 ctermfg=32',
    \   'decorator' :       'guifg=#ff8000 ctermfg=208',
    \
    \   'special-chars':    'guifg=#f558be ctermfg=165',
    \   'exceptions':       'guifg=#ff8000 ctermfg=208',
    \   'unknown1':         'guifg=#00ff77 ctermfg=48',
    \   'import':           'guifg=#ff8000 ctermfg=208',
    \}
el
    " ---------------------------------------------------------------------------------------------------------
    " ---------------------------------------------- Dark colors ----------------------------------------------
    " ---------------------------------------------------------------------------------------------------------
let palette = {
    \   'cursor':           'guifg=#278001 ctermfg=34  guibg=#f558be ctermbg=165',
    \   'gui-fg-1':         'guifg=#005f5f ctermfg=23',
    \   'gui-bg-1':         '                          guibg=#005f5f ctermbg=23',
    \
    \   'status-line':      'guifg=#5f80e3 ctermfg=66  guibg=#dadada ctermbg=253',
    \   'status-line-nc':   'guifg=#444444 ctermfg=238 guibg=#dadada ctermbg=253',
    \   'menu':             'guifg=#dadada ctermfg=253 guibg=#5f80e3 ctermbg=66',
    \   'search':           '                          guibg=#5f80e3 ctermbg=66',
    \   'tab':              'guifg=#dadada ctermfg=253 guibg=#585858 ctermbg=240 term=None      cterm=None',
    \   'tab-sel':          'guifg=#dadada ctermfg=253 guibg=#5f80e3 ctermbg=66 ',
    \   'tab-nc':           'guifg=#585858 ctermfg=240 guibg=#005f5f ctermbg=23',
    \
    \   'todo':             'guifg=#999999 ctermfg=238 guibg=#87af00 ctermbg=106',
    \   'non-text':         'guifg=#5f8787 ctermfg=66',
    \
    \   'normal':           'guifg=#9e9e9e ctermfg=247',
    \   'comment':          'guifg=#585858 ctermfg=240',
    \   'string':           'guifg=#87af00 ctermfg=106',
    \   'number':           'guifg=#875fd7 ctermfg=98',
    \
    \   'py-key-words' :    'guifg=#ff4f4f ctermfg=203',
    \   'fn-names' :        'guifg=#5f80e3 ctermfg=32',
    \   'decorator' :       'guifg=#ff8000 ctermfg=208',
    \
    \   'special-chars':    'guifg=#875fd7 ctermfg=98',
    \   'exceptions':       'guifg=#ff8000 ctermfg=208',
    \   'unknown1':         'guifg=#00ff77 ctermfg=48',
    \   'import':           'guifg=#ff8000 ctermfg=208',
    \}
endif

exec 'hi  Cursor        '.palette['cursor']
exec 'hi iCursor        '.palette['cursor']
exec 'hi CursorIM       '.palette['cursor']
exec 'hi TermCursor     '.palette['cursor']
exec 'hi TermCursorNC   '.palette['cursor']

exec 'hi Directory      '.palette['gui-fg-1']
exec 'hi Pmenu          '.palette['menu']

exec 'hi Search         '.palette['search']
exec 'hi Visual         '.palette['gui-bg-1']
exec 'hi StatusLine     '.palette['status-line']
exec 'hi StatusLineNC   '.palette['status-line-nc']
exec 'hi VertSplit      '.palette['status-line']
exec 'hi LineNr         '.palette['gui-fg-1']
exec 'hi MatchParen     '.palette['gui-bg-1']


exec 'hi Todo           '.palette['todo']
exec 'hi EndOfBuffer    '.palette['non-text']
exec 'hi NonText        '.palette['non-text']
exec 'hi SpecialKey     '.palette['special-chars']
exec 'hi TabLineSel     '.palette['tab-sel']
exec 'hi TabLineFill    '.palette['tab-nc']
exec 'hi TabLine        '.palette['tab']

exec 'hi Normal         '.palette['normal']
exec 'hi NormalFloat    '.palette['normal']
exec 'hi NormalNC       '.palette['normal']
exec 'hi Comment        '.palette['comment']
exec 'hi String         '.palette['string']
exec 'hi Number         '.palette['number']

exec 'hi Function       '.palette['fn-names']
exec 'hi Type           '.palette['fn-names']

exec 'hi Statement      '.palette['py-key-words']
exec 'hi Label          '.palette['py-key-words']

exec 'hi Conditional    '.palette['py-key-words']
exec 'hi Operator       '.palette['py-key-words']
exec 'hi Repeat         '.palette['py-key-words']
exec 'hi Exception      '.palette['py-key-words']

exec 'hi Define         '.palette['decorator']

exec 'hi Structure      '.palette['exceptions']

exec 'hi Special        '.palette['special-chars']

exec 'hi Error          '.palette['unknown1']

exec 'hi Include        '.palette['import']



" --- Old back-up ---
    "highlight Cursor        guibg=#f558be guifg=#278001 ctermbg=165 ctermfg=34      " Pink and green, no effect
    "highlight iCursor       guibg=#f558be guifg=#278001 ctermbg=165 ctermfg=34      " Pink and green, no effect
    "highlight CursorIM      guibg=#f558be guifg=#278001 ctermbg=165 ctermfg=34      " Pink and green, no effect

    "highlight Search        guibg=#5f80e3 guifg=#dadada ctermbg=32  ctermfg=253
    "highlight Visual                      guifg=#5f80e3             ctermfg=32
    "highlight StatusLine    guibg=#eeeeee guifg=#5f80e3 ctermbg=255 ctermfg=32
    "highlight StatusLineNC  guibg=#eeeeee guifg=#444444 ctermbg=255 ctermfg=238

    "highlight Todo          guibg=#278001 guifg=#eeeeee ctermbg=34  ctermfg=255     " 34: green
    "highlight EndOfBuffer                 guifg=#0000d7             ctermfg=20      " 20: dark blue
    "highlight NonText                     guifg=#0000d7             ctermfg=20

    "highlight Normal        guibg=#eeeeee guifg=#444444 ctermbg=255 ctermfg=238     " 238: dark grey
    "highlight Comment                     guifg=#999999             ctermfg=244     " 244: light grey
    "highlight String                      guifg=#278001             ctermfg=34

    "highlight Label                       guifg=#d63c44             ctermfg=160     " 160: red
    ""def, class, with...
    "highlight Statement                   guifg=#d63c44             ctermfg=160
    " "#5fe37e #698060 Function names and tes
    "highlight Function                    guifg=#5f80e3             ctermfg=32      " 32: blue
    "highlight Type                        guifg=#5f80e3             ctermfg=32

    "highlight Conditional                 guifg=#d63c44             ctermfg=160
    "highlight Operator                    guifg=#d63c44             ctermfg=160
    ""Iterations
    "highlight Repeat                      guifg=#d63c44             ctermfg=160
    "highlight Special                     guifg=#f558be             ctermfg=165

    ""Try catch
    "highlight Exception                   guifg=#d63c44             ctermfg=160
    ""Exceptions
    "highlight Structure                   guifg=#ff8000             ctermfg=208"Orange

    "highlight Error                       guifg=#00ff77             ctermfg=48      " 48: spring green

    ""Import
    "highlight Include                     guifg=#ff8000             ctermfg=208
    "highlight Number                      guifg=#921fbf             ctermfg=92      " 92: dark violet
