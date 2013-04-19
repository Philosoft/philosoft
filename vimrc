"=== Vundle === {
set nocompatible
filetype off
set rtp+=~/.vim/vundle.git/
call vundle#rc()

" == bundles == {
	" = examples {
	" original repos on github
	" Bundle 'tpop/vim-fugitive'
	" vim-script repos
	" Bundle 'FuzzyFinder'
	" non git-hub repos
	" Bundle 'git://git.blah.com/lol.git
	" }
Bundle 'FuzzyFinder'
Bundle 'python.vim'
Bundle 'vimwiki'
Bundle 'L9'
Bundle 'zencoding-vim'
Bundle 'vim-scripts/bufexplorer.zip'

Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tmhedberg/matchit'
Bundle 'tpope/vim-surround'
Bundle 'weierophinney/paster.vim'
Bundle 'majutsushi/tagbar'
"Bundle 'fholgado/minibufexpl.vim'
Bundle 'sjl/gundo.vim'

Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'
" }

filetype plugin indent on
"}
"=== Внешний вид === {
set nu
syn on
"set foldenable
"set fdm=indent
"set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

"Разный фон для gui и консоли   
let g:molokai_original=1
colorscheme molokai
if has("gui_running")
    set guioptions-=m
    set guioptions-=T
else
    set bg=dark
endif
"256 цветов
set t_Co=256
"}

"=== Some opts === {
set autochdir "Автоматически менять каталог
set nocompatible
set visualbell
set t_vb=
set confirm "Диалоги вместо сообщений об ошибках
set clipboard+=unnamed " share windows clipboard

set spelllang=en,ru          " Языки для проверки правописания
set encoding=utf-8
set fileencodings=utf-8,cp1251,koi8-r,cp866
set termencoding=utf-8 
" Позволяет передвигаться по пустым строкам
set virtualedit=block
"}

filetype on
filetype plugin on
filetype indent on
"=== Dirs === {
set backup
set backupdir=~/.vim/backup/
set directory=~/.vim/tmp/
let g:session_dir='~/.vim/sessions/'
""}

""=== Оступы === {
set tabstop=4
set softtabstop=0
set shiftwidth=4
set smarttab
"set expandtab
set shiftround
set ai
set smartindent
inoremap # X#
"backspace стирает отступ и перевод строки
set backspace=indent,eol,start
"Shortcut to rapidly toggle `set list`
nmap <leader>l :set list!<CR>
" Use the same symbols as TextMate for tabstops and EOLs
set listchars=tab:▸·,eol:¬
set list
set showbreak=↪
""}

" включает поддержку строк вида vim:st=2‥
set modeline

" переключение между буферами
nmap <c-p> :bp<CR>
nmap <c-n> :bn<CR>

""=== Прокрутка === {
""set scrolloff=7
""set scrolljump=7
""set sidescrolloff=7
""set sidescroll=1
""}

"=== Поиск === {
set incsearch "поиск по мере набора
set hlsearch  "подсвечивать результаты
set ignorecase
set smartcase "Игнорировать предыдущую опцию, если в строке поиска присутствуют символы разного регистра
"}

"=== История ==={
set history=20
set viminfo+=h "Сохранять историю
"}

"=== Строка статуса и командная строка === {
set laststatus=2 "Всегда отображать статусную строку для каждого окна
set shortmess=atToOI
set showcmd
set showmode
set statusline=%<%f%h%m
set statusline+=%#Error#%r%*%=
set statusline+=\ type=%Y
set statusline+=\ Line:\ %l/%L 
set wildmenu                " использовать wildmenu ...
set wildcharm=<TAB>         " ... с авто-дополнением
set cmdheight=2             " Command line height 2 
"}

set sessionoptions-=blank "Не сохранять пустые окна

nmap <leader>\ :nohl<cr>

"Изменяемые размеры окон
set modifiable

"=== Разметка клавиш === {{{
map ц W
"}}}

"=== Плагины === {{{
"vimwiki
let wiki = {}
let wiki.nested_syntaxes = {'python': 'python', 'c++': 'cpp', 'sh': 'sh', 'xml': 'xml', 'vim': 'vim', 'c': 'c', 'config': 'config', 'lua': 'lua'}
let g:vimwiki_list = [wiki]
let g:vimwiki_list = [{'html_header': '~/vimwiki_html/syntax_hl/header.tpl'}]
let g:vimwiki_list = [{'path_html': '~/vimwiki_html'}]

" Python.vim
let python_highlight_all=1

"autocmd FileType python set omnifunc=pythoncomplete#Complete

"latex-suite
set grepprg=grep\ -nH\ $*
"let g:tex_flavor='latex'
"set iskeyword+=:

"}}}


" {{{ nmapings
nmap р h
nmap о j
nmap л k
nmap д l

nmap ц w
nmap Ц W
nmap и b
nmap И b
nmap а f
nmap А F

nmap щ o
nmap Щ O

nmap Ж :

nmap т n
nmap Т N
" }}}

" {{{
imap <C-ц> <C-w>
" }}}

function! ToggleNumbering()
	if(&relativenumber == 1)
		set number
	else
		set relativenumber
	endif
endfunc

nnoremap <leader>r :call ToggleNumbering()<CR>
" tagbar {
let g:tagbar_left=1
nnoremap <silent> <F9> :TagbarToggle<CR>
" }

nnoremap <F5> :GundoToggle<CR>
" NERDTree {
map <F2> :NERDTreeToggle<CR>
" }
"
" commands {

"command Thtml :%!tidy -q -i --show-errors 0 "Tidy up hmtl in current buffer

" }
