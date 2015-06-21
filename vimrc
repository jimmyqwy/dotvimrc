set nocompatible              " be iMproved, required
let mapleader = "\<Space>"
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

""""""" JavaScript
Plugin 'claco/jasmine.vim'
Plugin 'elzr/vim-json'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mxw/vim-jsx'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'Shutnik/jshint2.vim'

""""""" Web Development
Plugin 'aaronjensen/vim-sass-status'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'groenewege/vim-less'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'lukaszb/vim-web-indent'
Plugin 'othree/html5.vim'
Plugin 'tpope/vim-haml'

"""""" Markdown
autocmd BufNewFile,BufReadPost *.md,*.markdown set filetype=markdown
autocmd FileType markdown set tw=80

"""""" GIT
Plugin 'tpope/vim-git'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'

"""""" Language
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-expand-region'
Plugin 'sheerun/vim-polyglot'
"
""""""" Syntax highlighting
Plugin 'scrooloose/syntastic'
Plugin 'tomtom/tcomment_vim' " Line commenting
"
""""" UI Plugins =======================
Plugin 'chriskempson/base16-vim' " base16 theme
Plugin 'dandorman/vim-colors'
Plugin 'w0ng/vim-hybrid'
""""" End UI Plugins ===================

""""" Code Navigation ===============
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-vinegar' " navigate up a directory with '-' in netrw, among other things
Plugin 'ervandew/supertab'
""""" End Code Navigation ===========

""" Other configurations
" Plugin 'sheerun/vimrc'
Plugin 'jimmyqwy/jvimrc'
Plugin 'altercation/vim-colors-solarized'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/vim-easy-align'

call vundle#end()            " required

"" Configurations ===========================
filetype plugin indent on    " required

" Color
set background=dark
set t_Co=256
" " in case t_Co alone doesn't work, add this as well: " i.e. Force 256 colors harder
let &t_AB="\e[48;5;%dm"
let &t_AF="\e[38;5;%dm"
set term=screen-256color"
let $TERM='screen-256color'
colorscheme hybrid

" Solarized options
" let g:solarized_term = 1
" let g:solarized_termcolors=256
" syntax enable
" colorscheme solarized

set cul " highlight current line
" set t_ut=

"" ===========================================
" Expand region - press vvv
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Command T  - ESC to dismiss find window
"if &term =~ "xterm" || &term =~ "screen"
"  let g:CommandTCancelMap = ['<ESC>', '<C-c>']
"endif

"" <Leader> Operation and key mapping ========
" fast open and save file
nnoremap <Leader>o :CtrlP<CR>
nnoremap <Leader>s :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>v V
nnoremap <Leader>g gf
vmap <Leader>y "+y
vmap <Leader>d "+d
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P
nmap <Leader><Leader> V

" Alignment
vmap <Enter> <Plug>(EasyAlign)
nmap <Leader>a <Plug>(EasyAlign)

" file head and tail
" nnoremap <BS><BS> gg
nnoremap <CR><CR> G

" reselect pasted content:
noremap gV `[v`]

" Custom split opening / closing behaviour
map <C-N> :vsp .<CR>
map <C-C> :q<CR>

" Home End
nnoremap <Leader>h 0
nnoremap <Leader>l $

"" Others ======================================
" If you prefer the Omni-Completion tip window to close when a selection is made, these lines close it on movement in insert mode or when leaving insert mode
"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif

let g:unite_force_overwrite_statusline = 0
let g:vimfiler_force_overwrite_statusline = 0
let g:vimshell_force_overwrite_statusline = 0
