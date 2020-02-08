
"███╗   ██╗██╗   ██╗██╗███╗   ███╗
"████╗  ██║██║   ██║██║████╗ ████║
"██╔██╗ ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

" Plugins

call plug#begin()

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-commentary'

Plug 'dense-analysis/ale'

Plug '907th/vim-auto-save'

Plug 'ekiim/vim-mathpix'

Plug 'terryma/vim-multiple-cursors'

Plug 'arcticicestudio/nord-vim'

Plug 'Kody-Quintana/bspwm_border_color'

Plug 'amerlyq/vim-focus-autocmd'

Plug 'Yggdroot/indentLine'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'lambdalisue/fern.vim'

Plug 'matze/vim-tex-fold'

Plug 'majutsushi/tagbar'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'lervag/vimtex'

Plug 'honza/vim-snippets'

Plug 'ryanoasis/vim-devicons'

Plug 'voldikss/vim-floaterm'

Plug 'yuttie/comfortable-motion.vim'

Plug 'arakashic/chromatica.nvim'

Plug 'liuchengxu/vim-clap'

Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

Plug 'ptzz/lf.vim'

Plug 'rbgrouleff/bclose.vim'

call plug#end()           


"General nvim settings

"Numbers
set relativenumber
set number

"Syntax
syntax enable

"Fold
set foldenable

"Mouse
set mouse=a

"swap
set noswapfile

"split
set splitright
set splitbelow

"wrap
set wrap

"other options
set tabstop=2
set shiftwidth=4
set softtabstop=2
set expandtab
set showcmd
set smarttab
filetype indent on
set wildmenu
set showmatch
set incsearch
set hlsearch
set hidden
set noshowmode
set linebreak
set confirm

"Colorscheme
colorscheme nord
set background=dark
set t_Co=256
hi visual ctermfg=black ctermbg=yellow gui=none
hi Directory ctermfg=green ctermbg=black gui=none

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

"Plugins Settings

"vim-auto-save
let g:auto_save = 1  "AutoSave on Vim startup

"floaterm
let g:floaterm_keymap_toggle = '<leader>t'

"indentLine
let g:indentLine_faster     = 1
let g:indentLine_setConceal = 0

"ferm.vim
nmap <silent> <C-o> :Fern . -drawer<CR>

"ALE
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '-'
nmap <silent> <C-w> <Plug>(ale_toggle)

"lightline
set laststatus=2 

set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

let g:webdevicons_enable = 1

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ 'active': {
   \   'left': [ ['mode', 'paste'],
   \             ['cocstatus', 'fugitive', 'readonly', 'filename', 'modified'] ],
   \   'right': [['file'], ['fileformat'], [ 'lineinfo' ], ['percent'] ]
   \ },
   \ 'component': {
   \   'readonly': '%{&filetype=="help"?"":&readonly?"∢":""}',
   \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
   \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
   \ },
   \ 'component_visible_condition': {
   \   'readonly': '(&filetype!="help"&& &readonly)',
   \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
   \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
   \ },
   \ 'separator': { 'left': ' ', 'right': ' ' },
   \ 'subseparator': { 'left': ' ', 'right': ' ' },
   \ 'component_function': {
	 \   'cocstatus': 'coc#status',
   \   'file': 'MyFiletype',
   \   'fileformat': 'MyFileformat',
	 \},
   \ }
 
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

"Nord colorscheme
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1

"mathpix-vim
nmap <silent> <Leader>m :Img2Text<CR>

"mulit cursor
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_start_word_key      = '<A-n>'
let g:multi_cursor_select_all_word_key = '<A-m>'
let g:multi_cursor_start_key           = 'g<A-n>'
let g:multi_cursor_select_all_key      = 'g<A-m>'
let g:multi_cursor_next_key            = '<A-n>'
let g:multi_cursor_prev_key            = '<A-p>'
let g:multi_cursor_skip_key            = '<A-x>'
let g:multi_cursor_quit_key            = '<Esc>'

"ctrl p
let g:ctrlp_map = '<c-p>'

"indentLine 
let g:indentLine_char = '|'

"tagbar
nmap <silent> <C-t> :TagbarToggle<CR>
let g:tagbar_compact = 1

"Coc

" Some servers have issues with backup files
set nobackup
set nowritebackup

"better for diagnostic
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

"trigger completion
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" documentation in preview window
nnoremap <silent> <leader>h :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"coc snippets

"trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

"select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

"jump to next placeholder
let g:coc_snippet_next = '<c-j>'

"jump to previous placeholder
let g:coc_snippet_prev = '<c-k>'

" expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

" Remap for do codeAction of selected region
function! s:cocActionsOpenFromSelected(type) abort
  execute 'CocCommand actions.open ' . a:type
endfunction

xmap <silent> <leader>a :<C-u>execute 'CocCommand actions.open ' . visualmode()<CR>
nmap <silent> <leader>a :<C-u>set operatorfunc=<SID>cocActionsOpenFromSelected<CR>g@

"smooth scroll
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <silent> J :call comfortable_motion#flick(100)<CR>
nnoremap <silent> K :call comfortable_motion#flick(-100)<CR>

"chromatica for C++
let g:chromatica#responsive_mode=1
let g:chromatica#enable_at_startup=1

"coc pairs
autocmd FileType tex let b:coc_pairs = [["$", "$"]]
