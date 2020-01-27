
"███╗   ██╗██╗   ██╗██╗███╗   ███╗
"████╗  ██║██║   ██║██║████╗ ████║
"██╔██╗ ██║██║   ██║██║██╔████╔██║
"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║
"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║
"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
call plug#begin()

Plug 'VundleVim/Vundle.vim'

Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-surround'

Plug 'tpope/vim-eunuch'

Plug 'tpope/vim-fugitive'

Plug 'Raimondi/delimitMate'

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

call plug#end()            " required



let g:livepreview_previewer = 'zathura' "vim-latex-preview 
set laststatus=2 "lightline.vim

"Vim settings
set relativenumber
set number
syntax enable
set tabstop=2
set shiftwidth=4
set softtabstop=2
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
set encoding=UTF-8

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
imap kk <Esc>la
nmap <leader>f za

"vim-auto-save
let g:auto_save = 1  " enable AutoSave on Vim startup

"ferm.vim
nmap <silent> <C-o> :Fern . -drawer<CR>

"ALE
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '-'
nmap <silent> <C-w> <Plug>(ale_toggle)

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"lightline
let g:lightline = {
     \ 'colorscheme': 'nord',
     \ }

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ 'active': {
   \   'left': [ ['mode', 'paste'],
   \             ['cocstatus', 'fugitive', 'readonly', 'filename', 'modified'] ],
   \   'right': [['filetype'], [ 'lineinfo' ], ['percent'] ]
   \ },
   \ 'component': {
   \   'readonly': '%{&filetype=="help"?"":&readonly?"∢":""}',
   \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
   \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
   \ },
   \ 'component_visible_condition': {
   \   'readonly': '(&filetype!="help"&& &readonly)',
   \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
   \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
   \ },
   \ 'separator': { 'left': ' ', 'right': ' ' },
   \ 'subseparator': { 'left': ' ', 'right': ' ' },
   \ 'component_function': {
	 \   'cocstatus': 'coc#status'
	 \},
   \ }
 
  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()


"Nord
let g:nord_cursor_line_number_background = 1
let g:nord_bold_vertical_split_line = 1

"mathpix-vim
nmap <silent> <Leader>m :Img2Text<CR>

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


"ctrl p
let g:ctrlp_map = '<c-p>'

"indentLine 
let g:indentLine_char = '|'

"YouCompleteme extra config
 let g:ycm_global_ycm_extra_conf = '$HOME/.config/nvim/ycm_extra_conf/ycm_extra_conf.py'

 "tagbar
 nmap <silent> <C-i> :TagbarToggle<CR>

" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
" Or use `complete_info` if your vim support it, like:
" inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

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

" Remap for format selected region
xmap <C-f>  <Plug>(coc-format-selected)
nmap <C-f>  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of languageserver.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

"coc snippets
" Use <C-l> for trigger snippet expand.
imap <C-l> <Plug>(coc-snippets-expand)

" Use <C-j> for select text for visual placeholder of snippet.
vmap <C-j> <Plug>(coc-snippets-select)

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'

" Use <C-j> for both expand and jump (make expand higher priority.)
imap <C-j> <Plug>(coc-snippets-expand-jump)

