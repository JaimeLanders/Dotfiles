"##############################
"# Title:	Vim Configuration #
"# Type:		Vim .config   #
"# By:		JtathaX           #
"# Updated:	10/31/17          #
"##############################

" ---Vundle settings---
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'easymotion/vim-easymotion'
Plugin 'nathanaelkane/vim-indent-guides'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ---End vundle settings---

" ---EasyMotion settings---
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" ---End EasyMotion settings---

" ---Indent Guide settings---
let g:indent_guides_enable_on_vim_startupz = 1
"colorscheme tir_black
set ts=4 sw=4 et
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 1
"---End indent guide settings---

" ---Nerdtree settings---
" autocmd vimenter * NERDTree " auto start NERDTree when VIM starts
autocmd StdinReadPre * let s:std_in=1 " auto start NERDTree when VIM starts without file
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif " auto start NERDTree when VIM starts without file
autocmd StdinReadPre * let s:std_in=1 " auto start NERDTree when VIM starts with directory
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif " auto start NERDTree when VIM starts with directory
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif " Close NERDTree if Vim closed
map <C-n> :NERDTreeToggle<CR> " Toggle NERDTree with Ctrl+N
" ---End Nerdtree settings---

" ---YouCompleteMe Settings---
let g:ycm_global_ycm_extra_conf = '/usr/share/vim/vimfiles/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_server_python_interpreter = '/usr/bin/python2'
let g:ycm_key_invoke_completion = '<C-Space>'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
highlight YcmErrorLine guibg=#ff0000
" ---End YouCompleteMe settings---

" ---VIM Settings---
" Syntax Color Highlighting
syntax on
:set t_Co=256
colorscheme jland

" Show Line Numbers
:set number

" Clear sign collumn
:hi clear SignColumn

" Match Braces
:set showmatch

" Flash Instead of Bell
:set flash

" Ignore Case When Searching
:set ignorecase

" Display Status Line Always
:set laststatus=2

" Display Lines Yanked/Deleted
:set report=1

" Display Type of Insert
:set showmode

" Enable Vi Compatibility
":set compatible " breaks YCM

" Indent Settings
filetype plugin indent on 
:set nosmarttab " fix for ycm
:set autoindent
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set expandtab

" Wrap lines
:set textwidth=120

" Intelligent comments
:set comments=sl:/*,mb:\ *,elx:\ */
" ---End VIM settings---


" ---Enhanced keyboard mappings---
" in normal mode F2 will save the file
"nmap <F2> :w<CR>
" in insert mode F2 will exit insert, save, enters insert again
"imap <F2> <ESC>:w<CR>i
" switch between header/source with F4
"map <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>
" recreate tags file with F5
"map <F5> :!ctags -R –c++-kinds=+p –fields=+iaS –extra=+q .<CR>
" create doxygen comment
" map <F6> :Dox<CR>
" build using makeprg with <F7>
"map <F7> :make<CR>
" build using makeprg with <S-F7>
"map <S-F7> :make clean all<CR>
" goto definition with F12
"map <F12> <C-]>
" ---End enhanced keyboard mappings---