"lightline
set laststatus=2 

" Coc-Support
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

"Devicons
let g:webdevicons_enable = 1

let g:lightline = {
   \ 'colorscheme': 'nord',
   \ 'active': {
   \   'left': [ ['mode', 'paste'],
   \             ['cocstatus', 'fugitive', 'readonly', 'filename', 'modified'] ],
   \   'right': [ ['file'], ['fileformat'], [ 'lineinfo' ], ['percent'],
   \            [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ] ]
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
	 \ },
   \'component_expand': {
   \  'linter_checking': 'lightline#ale#checking',
   \  'linter_infos': 'lightline#ale#infos',
   \  'linter_warnings': 'lightline#ale#warnings',
   \  'linter_errors': 'lightline#ale#errors',
   \  'linter_ok': 'lightline#ale#ok',
   \ },
   \'component_type': {
   \  'linter_checking': 'right',
   \  'linter_infos': 'right',
   \  'linter_warnings': 'warning',
   \  'linter_errors': 'error',
   \  'linter_ok': 'right',
   \ },
\ }
 
let g:lightline#ale#indicator_checking = "ﲊ"
let g:lightline#ale#indicator_infos = ""
let g:lightline#ale#indicator_warnings = ""
let g:lightline#ale#indicator_errors = ""
let g:lightline#ale#indicator_ok = ""

  autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

