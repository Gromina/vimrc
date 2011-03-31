call pathogen#helptags()
call pathogen#runtime_append_all_bundles()


"disable window flashing
set noerrorbells
set visualbell
set t_vb=
set hid

set foldmethod=indent

set shiftwidth=4
set ts=4
set sw=4
set smartcase
set ignorecase
set incsearch
set langmap=Ж:,йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ъ],фa,ыs,вd,аf,пg,рh,оj,лk,дl,э',яz,чx,сc,мv,иb,тn,ьm,б\,,ю.,ё`
set langmap=ё`йqцwуeкrеtнyгuшiщoзpх[ъ]фaыsвdаfпgрhоjлkдlж\\;э'яzчxсcмvиbтnьmб\\,ю.Ё~ЙQЦWУEКRЕTНYГUШIЩOЗPХ{Ъ}ФAЫSВDАFПGРHОJЛKДLЖ:Э\\"ЯZЧXСCМVИBТNЬMЮ>Б<
set nowrap
set autoindent
colorscheme dusk
set sidescroll=5
set sidescrolloff=5
set showmatch " проверка скобок
set history=500 " увеличение истории команд
filetype plugin on
filetype indent on
set undolevels=100
set ttyfast
let mapleader = ","
set guioptions-=T
set guioptions-=r
set guioptions-=m
syntax enable

"show tabs
set list!
set listchars=tab:>-


set tabstop=4
set softtabstop=4
set shiftwidth=4
"set noexpandtab
set expandtab
set backspace=indent,eol,start

" Tabs
nnoremap <silent> <LocalLeader>[ :tabprev<CR>
nnoremap <silent> <LocalLeader>] :tabnext<CR>

" Buffers
nnoremap <silent> <LocalLeader>- :bd<CR>

" Buffer list
imap <S-F4> <Esc>:buffers<CR>
nmap <S-F4> :buffers<CR>

" Toggle line numbers
imap <F1> <Esc>:set<Space>nu!<CR>a
nmap <F1> :set<Space>nu!<CR>

set encoding=utf-8
set termencoding=utf-8

map <F7> :let &fileencoding=&encoding<CR>

set wildmenu
set wcm=<Tab>
menu Encoding.koi8-r :e ++enc=koi8-r<CR>
menu Encoding.windows-1251 :e ++enc=cp1251<CR>
menu Encoding.ibm-866 :e ++enc=ibm866<CR>
menu Encoding.utf-8 :e ++enc=utf-8<CR>
map <F8> :emenu Encoding.<TAB>

set statusline=%<%f%h%m%r%=%b\ \ 0x%B\ \ %l,%c%V\ %P

let g:wokmarks_do_maps=1
let loaded_netrw = 1 "fuck netrw

"actionscript syntax hl
autocmd BufRead *.as set filetype=actionscript

"highlight unnecessary spaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

imap <C-o> <c-m><esc>O<tab>
nmap <C-o> i<c-m><esc>O<tab>

autocmd BufRead *.vala set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
autocmd BufRead *.vapi set efm=%f:%l.%c-%[%^:]%#:\ %t%[%^:]%#:\ %m
au BufRead,BufNewFile *.vala            setfiletype vala
au BufRead,BufNewFile *.vapi            setfiletype vala

" Disable valadoc syntax highlight
"let vala_ignore_valadoc = 1

" Enable comment strings
let vala_comment_strings = 1

" Highlight space errors
let vala_space_errors = 1
" Disable trailing space errors
"let vala_no_trail_space_error = 1
" Disable space-tab-space errors
let vala_no_tab_space_error = 1

" Minimum lines used for comment syncing (default 50)
"let vala_minlines = 120

"replace selected text
vnoremap <C-r> "hy:%s/<C-r>h//g<left><left>
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
autocmd BufNewFile,BufRead *Cakefile set filetype=coffee

let g:user_zen_settings = {
    \ 'indentation' : '    '
    \ }

set runtimepath+=~/.vim/vundle.git/
call vundle#rc()

Bundle "https://github.com/thinca/vim-quickrun.git"

"Programming
Bundle "jQuery"
Bundle "https://github.com/mattn/zencoding-vim.git"
Bundle "https://github.com/vim-scripts/jsbeautify.git"
Bundle "https://github.com/kchmck/vim-coffee-script.git"
Bundle "https://github.com/msanders/snipmate.vim"

Bundle "Markdown"

Bundle "repeat.vim"
Bundle "surround.vim"
Bundle "https://github.com/vim-scripts/wokmarks.vim.git"

" tComment
Bundle "tComment"
nnoremap // :TComment<CR>
vnoremap // :TComment<CR>

" Command-T
Bundle "git://git.wincent.com/command-t.git"
let g:CommandTMatchWindowAtTop=1 " show window at top

" Navigation
Bundle "http://github.com/gmarik/vim-visual-star-search.git"

"Visual
Bundle "https://github.com/tpope/vim-vividchalk.git"


