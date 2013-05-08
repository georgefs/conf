

filetype plugin indent on     " required! 
filetype plugin on

set hlsearch

hi IndentGuidesOdd  ctermbg=black
hi IndentGuidesEven ctermbg=darkgrey

hi IndentGuidesOdd  ctermbg=white
hi IndentGuidesEven ctermbg=lightgrey

set background=dark



"move
nmap [1;2A OA
nmap [1;2B OB

nmap <S-j> OB
nmap <S-k> OA

nmap OA gOA
nmap OB gOB

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
Bundle 'georgefs/vim-template.git'
Bundle 'plasticboy/vim-markdown.git'
Bundle 'zef/vim-cycle.git'
Bundle 'https://github.com/terryma/vim-multiple-cursors.git'
Bundle 'LargeFile'
Bundle 'goldfeld/vim-seek'



"height ligth cusor
set t_Co=256
set cursorline
set cursorcolumn

highlight CursorLine cterm=none ctermbg=236
highlight CursorColumn cterm=none ctermbg=236
highlight ColorColumn ctermbg=none ctermbg=236


" Dim inactive windows using 'colorcolumn' setting
" This tends to slow down redrawing, but is very useful.
" Based on https://groups.google.com/d/msg/vim_use/IJU-Vk-QLJE/xz4hjPjCRBUJ
" XXX: this will only work with lines containing text (i.e. not '~')
function! s:DimInactiveWindows()
  for i in range(1, tabpagewinnr(tabpagenr(), '$'))
    let l:range = ""
    if i != winnr()
      if &wrap
        " HACK: when wrapping lines is enabled, we use the maximum number
        " of columns getting highlighted. This might get calculated by
        " looking for the longest visible line and using a multiple of
        " winwidth().
        let l:width=999 " max
      else
        let l:width=winwidth(i)
      endif
      let l:range = join(range(1, l:width), ',')
    endif
    call setwinvar(i, '&colorcolumn', l:range)
  endfor
endfunction
augroup DimInactiveWindows
  au!
  au WinEnter * call s:DimInactiveWindows()
  au WinEnter * set cursorline
  au WinEnter * set cursorcolumn
  au WinLeave * set nocursorline
  au WinLeave * set nocursorcolumn
augroup END


""ubuntu virtual mode ctrl+c 複製到系統剪貼簿 gtk only
"python import gtk
"python import vim
"
"vmap <silent> <C-C> y:let @0=substitute(@0,"\\","\\\\\\","gi")<CR>:let @0=substitute(@0,"\'","\\\\'","gi")<CR>:python gtk.clipboard_get().set_text('''<C-R>0''')<CR>:python gtk.clipboard_get().store()<CR>
"

set wildmenu
set wildmode=longest,list


