source vim/bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect('~/dotfiles/vim/bundle/{}')
call pathogen#helptags()
set relativenumber
set number
syntax on
filetype plugin indent on
set ai
set ignorecase
set hls
set lbr
set backspace=indent,eol,start
set history=50
set ruler
set showcmd
set incsearch
set mouse=a
set autowrite
set smartindent
if has("autocmd")
    filetype plugin indent on
    autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab
endif
set tabstop=4
set shiftwidth=4
set expandtab
set smartcase
set nowrap
set guifont=Consolas\ 10

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-h> <Esc>:tabprevious<CR>i
inoremap <C-l> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>

" CTRL-Tab is Next window
noremap <C-Tab> <C-W>w
inoremap <C-Tab> <C-O><C-W>w
cnoremap <C-Tab> <C-C><C-W>w
onoremap <C-Tab> <C-C><C-W>w

nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

colorscheme molokai 

nnoremap <F3> "=strftime("%x %x")<CR>P
inoremap <F3> <C-R>=strftime("%x %X")<CR>

silent! map <F2> :NERDTreeFind<CR>
let g:NERDTreeMapActivateNode="<F2>"
let NERDTreeQuitOnOpen=1

noremap <Up> ddkkp 
noremap <Down> ddp 
noremap <Left> <NOP>
noremap <Right> <NOP>

nnoremap ; :
nnoremap : ;

set so=10

set switchbuf+=usetab,newtab
noremap <F4> :vimgrep /<C-r><C-w>/j ~/**/*.c <Bar> cw
noremap <F5> :vimgrep /<C-r><C-w>/gj % <Bar> cw <CR>

fu! SaveSess()
    execute 'mksession! ' . getcwd() . '/.session.vim'
endfunction

fu! RestoreSess()
if filereadable(getcwd() . '/.session.vim')
    execute 'so ' . getcwd() . '/.session.vim'
    if bufexists(1)
        for l in range(1, bufnr('$'))
            if bufwinnr(l) == -1
                exec 'sbuffer ' . l
            endif
        endfor
    endif
endif
syntax on
endfunction

autocmd VimLeave * call SaveSess()
autocmd VimEnter * call RestoreSess()

