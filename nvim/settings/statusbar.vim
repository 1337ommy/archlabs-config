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

