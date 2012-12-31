set nocompatible

if has("win32")
    set runtimepath^=~/.vim
    let g:tagbar_ctags_bin = '~/.vim/dependencies/ctags/ctags'
endif

runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

let g:tagbar_type_javascript = { 'ctagsbin': '~/.vim/dependencies/jsctags' }

function! InsertModeline()
    let prev_line = line('.')
    let prev_pos = col('.')

    let modeline = substitute(&commentstring, '%s', ' vim: set et tw=' . string(&tw) . ' ts='
                \ . string(&ts) . ' sw=' . string(&sw) . ':', 'g')
    $put =''
    $put =modeline
    call cursor(prev_line, prev_pos)
endfunction

filetype plugin indent on

set guifont=Droid_Sans_Mono_Slashed:h11
set expandtab tabstop=4 shiftwidth=4 textwidth=100
set guioptions=arc
set virtualedit=all
set backspace=indent,eol,start
set smartindent autoindent smarttab
set hidden
set laststatus=2
set statusline=%F\ %m%h%r%w\ %{fugitive#statusline()}%=%l/%L\ (%p%%)\ Col:\ %c-%v\ [0x%02B]\ Buf:\ %n
set mousehide
set wildmenu
set relativenumber
set tildeop
set encoding=utf-8
set sessionoptions^=resize
set history=100
set showcmd
set incsearch

set backup backupdir=~/.vim/backups
if has("win32") || has("win64")
    set directory=~/appdata/local/temp
else
    set directory=/tmp
endif

colorscheme ansi_blows

autocmd!
autocmd GUIEnter * set visualbell t_vb=

let mapleader = ","
nmap <Leader>re :e ~/.vimrc<CR>
nmap <Leader>rs :so ~/.vimrc<CR>
nmap <Leader><Leader> :noh<CR>
nmap <Leader>a :TagbarToggle<CR>
nmap <Leader>m :call InsertModeline()<CR>
nmap <Leader>d :NERDTreeToggle<CR>
nmap <Leader>t :CommandT<CR>

nmap <C-CR> <C-]>

nmap <Space><Space> <C-W>x
nmap <Space>h <C-W>h
nmap <Space>j <C-W>j
nmap <Space>k <C-W>k
nmap <Space>l <C-W>l
nmap <Space>= <C-W>=
nmap <Space>H <C-W>H
nmap <Space>J <C-W>J
nmap <Space>K <C-W>K
nmap <Space>L <C-W>L
nmap <Space>^ <C-W>^
nmap <Space>_ <C-W>_
nmap <Space>c <C-W>c
nmap <Space>n <C-W>n
nmap <Space>p <C-W>p
nmap <Space>o <C-W>o
nmap <Space>x <C-W><C-W>

nmap <Space>t <C-W>T
nmap <Space>q :tabclose<CR>
nmap <Space>u :tabnext<CR>
nmap <Space>d :tabprevious<CR>
nmap <Space>f :tablast<CR>
nmap <Space>b :tabfirst<CR>

syntax on

" vim: set et tw=100 ts=4 sw=4:
