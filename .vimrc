set nocompatible
" Syntax highlighting
syntax on
set background=dark
" Built-in Vim colorscheme
colorscheme slate
" Display line numbers
set number
" Statusline settings
set statusline=
set statusline+=\ %F\ %M\ %Y\
set statusline+=%=
set statusline+=\ row:\ %l\ col:\ %c\ percent:\ %p%%
set laststatus=2
" Disable text wrapping
set nowrap
" Case insensitive search, unless capitalized
set ignorecase
set smartcase
" Display confirmation menu when exiting on no-write
set confirm
" Flash the screen instead of beeping on eof/l or error
set visualbell
" File-type specific indentations
filetype indent on
" Command autocompletion with <TAB>
set wildmenu
set showmatch
" Highlight search matches while typing
set incsearch
" Highlight search results
set hlsearch
