"Keybindings

"Leader key
let mapleader = "\<space>"

"disable arrowkeys
 noremap  <Up> <nop>
 noremap  <Down> <nop>
 noremap  <Left> <nop>
 noremap  <Right> <nop>
 noremap  <PageUp> <nop>
 noremap  <PageDown> <nop>
 onoremap <Up> <C-p>
 onoremap <Down> <C-n>

"Tabs
noremap <leader>1 1gt
noremap <leader>2 2gt
noremap <leader>3 3gt
noremap <leader>4 4gt
noremap <leader>5 5gt
noremap <leader>6 6gt
noremap <leader>7 7gt
noremap <leader>8 8gt
noremap <leader>9 9gt
noremap <leader>0 :tablast<cr>

"splitkeys
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

"Movement
inoremap jk <Esc>
nnoremap J <C-d>
nnoremap K  <C-u>
nnoremap H ^
nnoremap L $
xnoremap J <C-d>
xnoremap K  <C-u>
xnoremap H ^
xnoremap L $
nnoremap S :w<cr>
inoremap kk <Esc>la

"Save and Quit
nnoremap <Leader>q :q<CR>
nnoremap <Leader>s :x<CR>

"Fold
nnoremap <leader>ft za

"(source) config
nnoremap <leader>sv :source ~/.config/nvim/init.vim<cr>
nnoremap <leader>ev :vsplit ~/.config/nvim/init.vim<cr>
