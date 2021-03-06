set hidden
set number
set expandtab
set tabstop=2
set sts=2
set shiftwidth=2

syntax on
filetype plugin indent on
colorscheme idlefingers

set guioptions-=T

if has("gui_running")
  set guioptions=egmrt
endif

let g:CommandTMaxFiles=40000
:set wildignore+=vendor/**
:set wildignore+=public/images
:set wildignore+=*.png
:set wildignore+=*.jpg
:set wildignore+=*.gif

function HtmlEscape()
  silent s/&/\&amp;/eg
  silent s/</\&lt;/eg
  silent s/>/\&gt;/eg
  silent s/\'/\&apos;/eg
  silent s/\’/\&apos;/eg
  silent s/\"/\&quot;/eg
endfunction

function Align()
  let p = '^\s*|\s.*\s|\s*$'
    if exists(':Tabularize') && getline('.') =~# '^\s*|' && (getline(line('.')-1) =~# p || getline(line('.')+1) =~# p)
      let column = strlen(substitute(getline('.')[0:col('.')],'[^|]','','g'))
      let position = strlen(matchstr(getline('.')[0:col('.')],'.*|\s*\zs.*'))
      Tabularize/|/l1
      normal! 0
      call search(repeat('[^|]*|',column).'\s\{-\}'.repeat('.',position),'ce',line('.'))
    endif
endfunction
