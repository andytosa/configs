" Undo Persistance
set undodir=~/.vim/undodir
set undofile

" C-c and C-v - Copy/Paste to global clipboard
vmap <C-c> "+yi
imap <C-v> <esc>"+gpa
set clipboard+=unnamed

" Cursor and Cursorline
highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10

set cursorline
hi CursorLine term=bold cterm=bold guibg=Black

" Full colors
set termguicolors
syntax on
colorscheme gruvbox
set background=dark
set t_Co=256
let g:gruvbox_contrast_dark='hard'

" line numbers
set number relativenumber
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
	autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=0
set smartindent
set autoindent
set expandtab

" autocomplete
" git clone https://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe
autocmd FileType vim let b:vcm_tab_complete = 'vim'

