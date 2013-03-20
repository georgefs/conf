

filetype plugin indent on     " required! 
filetype plugin on

set hlsearch

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

set background=dark


"height ligth cusor
set t_Co=256
set cursorline
set cursorcolumn

highlight CursorLine cterm=none ctermbg=233
highlight CursorColumn cterm=none ctermbg=233

"move
nmap [1;2A OB
nmap [1;2B OA


""easymotion
let g:EasyMotion_leader_key = '<Leader>'
nmap <Space> H<Leader>f

""tab...
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab
set softtabstop=4
set smarttab





"vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'drmingdrmer/xptemplate'
Bundle 'L9'

" My Bundles here:
"
" original repos on github
Bundle 'vim-scripts/ZenCoding.vim'
Bundle 'Yggdroot/indentLine'
Bundle 'rosenfeld/conque-term'
Bundle 'matchit.zip'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'Indent-Guides'
Bundle 'lazywei/vim-doc-tw.git'
Bundle 'airblade/vim-gitgutter'
Bundle 'georgefs/vim-easymotion'
Bundle 'georgefs/vim-surround'
Bundle 'georgefs/snipmate.vim'



""ubuntu virtual mode ctrl+c 複製到系統剪貼簿 gtk only
"python import gtk
"python import vim
"
"vmap <silent> <C-C> y:let @0=substitute(@0,"\\","\\\\\\","gi")<CR>:let @0=substitute(@0,"\'","\\\\'","gi")<CR>:python gtk.clipboard_get().set_text('''<C-R>0''')<CR>:python gtk.clipboard_get().store()<CR>
