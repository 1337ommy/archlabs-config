
"██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"██║   ██║██║██╔████╔██║██████╔╝██║     
"╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
" ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plugin 'itchyny/lightline.vim'

Plugin 'tpope/vim-surround'

Plugin 'tpope/vim-eunuch'

Plugin 'tpope/vim-fugitive'

Plugin 'SirVer/ultisnips'

Plugin 'honza/vim-snippets'

Plugin 'mhinz/vim-startify'

Plugin 'Valloric/YouCompleteMe'

Plugin 'kien/ctrlp.vim'

Plugin 'ervandew/supertab'

Plugin 'Raimondi/delimitMate'

Plugin 'scrooloose/nerdtree'

Plugin 'dense-analysis/ale'

Plugin '907th/vim-auto-save'

Plugin 'octol/vim-cpp-enhanced-highlight'

Plugin 'sainnhe/edge'

Plugin 'sheerun/vim-polyglot'

Plugin 'LaTeX-Box-Team/LaTeX-Box', { 'for': 'tex' }

Plugin 'ekiim/vim-mathpix'

Plugin 'TaDaa/vimade'

Plugin 'ap/vim-css-color'

Plugin 'terryma/vim-multiple-cursors'

Plugin 'arcticicestudio/nord-vim'

Plugin 'Kody-Quintana/bspwm_border_color'

Plugin 'amerlyq/vim-focus-autocmd'


call vundle#end()            " required
filetype plugin indent on    " required



let g:livepreview_previewer = 'zathura' "vim-latex-preview 
set laststatus=2 "lightline.vim

"UltiSnips
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = "~/.vim/bundle/ultisnips/UltiSnips"

" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>']
let g:ycm_key_list_previous_completion = ['<C-p>']
let g:SuperTabDefaultCompletionType = '<C-n>'

"Vim settings
set relativenumber
set number
syntax enable
set tabstop=4
set softtabstop=4
set expandtab
set showcmd
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
set foldenable
colorscheme nord
set background=dark
set hidden
set smarttab
set mouse=a
set noshowmode
set linebreak
set confirm
set noswapfile
set splitright
set splitbelow
set t_Co=256
set nowrap
set cursorline
"keybindings

"Leader key <space> 
let mapleader = "\<space>"
"arrowkeys
 noremap  <Up> ""
 noremap! <Up> <Esc>
 noremap  <Down> ""
 noremap! <Down> <Esc>
 noremap  <Left> ""
 noremap! <Left> <Esc>
 noremap  <Right> ""
 noremap! <Right> <Esc>
 noremap  <PageUp> ""
 noremap! <PageUp> <Esc>
 noremap  <PageDown> ""
 noremap! <PageDown> <Esc>

" Go to tab by number
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

"splitkeys remap
nnoremap <leader>j <C-W><C-J>
nnoremap <leader>k <C-W><C-K>
nnoremap <leader>l <C-W><C-L>
nnoremap <leader>h <C-W><C-H>

 "remap
imap jj <Esc>
nmap J <C-d>
nmap K  <C-u>
nmap H ^
nmap L $
xmap J <C-d>
xmap K  <C-u>
xmap H ^
xmap L $
nnoremap S :w<cr>
nmap <Leader>q :q<CR>
nmap <Leader>s :x<CR>


"vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup

"Nerdtree Toggle
map <C-o> :NERDTreeToggle<CR>

"c++ enhanced highlighting
let g:cpp_class_scope_highlight = 1
let g:cpp_class_decl_highlight = 1

"ALE
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '-'
nmap <silent> <C-j> <Plug>(ale_toggle)

"lightline
let g:lightline = {
     \ 'colorscheme': 'nord',
     \ }

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ 'active': {
   \   'left': [ ['mode', 'paste'],
   \             ['fugitive', 'readonly', 'filename', 'modified'] ],
   \   'right': [['filetype'], [ 'lineinfo' ], ['percent'] ]
   \ },
   \ 'component': {
   \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
   \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
   \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
   \ },
   \ 'component_visible_condition': {
   \   'readonly': '(&filetype!="help"&& &readonly)',
   \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
   \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
   \ },
   \ 'separator': { 'left': ' ', 'right': ' ' },
   \ 'subseparator': { 'left': ' ', 'right': ' ' }
   \ }
 
"latex-box
let g:LatexBox_complete_inlineMath=0
let g:LatexBox_eq_env_patterns=0
let g:LatexBox_quickfix=2
let g:LatexBox_latexmk_async=0
let g:LatexBox_latexmk_options=0
let g:LatexBox_latexmk_preview_continuously=0
let g:LatexBox_completion_close_braces=1

"Nord
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1

"mathpix-vim
nmap <Leader>m :Img2Text<CR>

let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<A-n>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<A-n>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<A-n>'
let g:multi_cursor_prev_key            = '<A-p>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"startify
let g:startify_custom_header = [
            \ '                              ',
            \ '            __                ',
            \ '    __  __ /\_\    ___ ___    ',
            \ '   /\ \/\ \\/\ \ /'' __` __`\ ',
            \ '   \ \ \_/ |\ \ \/\ \/\ \/\ \ ',
            \ '    \ \___/  \ \_\ \_\ \_\ \_\',
            \ '     \/__/    \/_/\/_/\/_/\/_/',
            \ ]
