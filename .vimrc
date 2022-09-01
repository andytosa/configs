" Undo Persistance
set undodir=~/.vim/undodir
set undofile

" C-c and C-v - Copy/Paste to global clipboard
vmap <C-c> "+yi
imap <C-v> <esc>"+gpa
set clipboard+=unnamed

" Full colors
set termguicolors
syntax on
colorscheme uwu
set cursorline
hi CursorLine term=bold cterm=bold guibg=Black

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

