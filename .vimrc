
" Undo Persistance
set undodir=~/.vim/undodir
set undofile

" C-c and C-v - Copy/Paste to global clipboard
vmap <C-c> "+yi
imap <C-v> <esc>"+gpi
set clipboard+=unnamed

" Full colors
set termguicolors
syntax on
colorscheme tile
set cursorline
hi CursorLine term=bold cterm=bold guibg=Black

" appending is always fun on the end of the line
nmap a A

" cool brackets
imap { {}<Left>
imap {} {}
imap ( ()<Left>
imap () ()
imap [ []<Left>
imap [] []
imap {<Enter> {<CR>}<Esc>ko
imap (<Enter> (<CR>)<Esc>ko
imap [<Enter> [<CR>]<Esc>ko

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

" autocomplete
" git clone git://github.com/ajh17/VimCompletesMe.git ~/.vim/pack/vendor/start/VimCompletesMe
autocmd FileType vim let b:vcm_tab_complete = 'vim'

