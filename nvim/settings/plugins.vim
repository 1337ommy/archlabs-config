" Plugins Settings

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

"smooth scroll
let g:comfortable_motion_scroll_down_key = "j"
let g:comfortable_motion_scroll_up_key = "k"
nnoremap <silent> J :call comfortable_motion#flick(100)<CR>
nnoremap <silent> K :call comfortable_motion#flick(-100)<CR>

"chromatica for C++
let g:chromatica#responsive_mode=1
let g:chromatica#enable_at_startup=1

