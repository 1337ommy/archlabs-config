
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

source ~/.config/nvim/settings/general.vim
source ~/.config/nvim/settings/keys.vim
source ~/.config/nvim/settings/colorscheme.vim
source ~/.config/nvim/settings/statusbar.vim
source ~/.config/nvim/settings/plugins.vim
source ~/.config/nvim/settings/coc-settings.vim
