"---Search and highlight options---"                                                                                                            
set incsearch           "Set incremental search"
set cul             "Highlight current line"
set ignorecase          "Search ignoring case"

"--- scrolling for iTerm---"
set mouse=a
set ttymouse=xterm2

"---Console UI and Text Display---"
set lazyredraw          "Don't redraw if there is no need"
set nocompatible        "Turn of Vi compatibility"
set wildmenu            "Turn on wild menu capabilities" 
set wildmode=list:longest,full  "Set wildmode to list, longest, full"
syntax on    

"---Plugins---"
filetype plugin indent on

"---Indentation and Formatting---"
set textwidth=80                "Set the text width to 80 chars"
set cindent                     "Set C indentation style"
set number                      "Show line numbers"
set wrap                        "Set soft wrap"
set tabstop=4
set shiftwidth=4
set expandtab

"--Folding controls--"
"Saves and loads folds when opening and closing file"
au BufWinLeave * silent! mkview 
au BufWinEnter * silent! loadview
set foldmethod=marker
set foldmarker=#s,#e
"-----Key Bindings-----"

"Convert ; to : to avoid having to shift for every command"
nore ; : 
nore , ;

"Switch windows" 
nnoremap - <C-w>w

"Split screen and create new file called tmp.ext"
nnoremap + :split<CR>

"Setting highlight search on and off with F5"
nnoremap <F5> :set hls!<bar>set hls?<CR>

"Set easy escape key"
inoremap kk <ESC>

"Saving and quitting in insert mode"
inoremap qq <ESC>:q<CR>
inoremap ww <ESC>:w<CR>
inoremap wwq <ESC>:wq<CR>
"Same for normal mode"
nnoremap qq :q<CR>
nnoremap ww :w<CR> 
nnoremap wwq :wq<CR>
"Same for visual mode"
vnoremap qq :q<CR>
vnoremap ww :w<CR>
vnoremap wwq :wq<CR>

:command WQ wq
:command Wq wq
:command W w
:command Q q

iab anf and
iab adn and
iab ans and
iab teh the
iab thre there


"---Set title of terminal screen---"
let &titlestring = hostname() . "[vim(" . expand("%:t") . ")]"
if &term == "screen"
  set t_ts=^[k
  set t_fs=^[\
endif 
if &term == "screen" || &term == "xterm"
  set title
endif

if has("autocmd")
    autocmd Filetype java setlocal omnifunc=javacomplete#Complete
endif                                                                                                                                          
