if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin(stdpath('data') . '/plugged')

if has("nvim")
  Plug 'hoob3rt/lualine.nvim'
  Plug 'kristijanhusak/defx-git'
  Plug 'kristijanhusak/defx-icons'
  Plug 'neovim/nvim-lspconfig'
  Plug 'tami5/lspsaga.nvim', { 'branch': 'nvim51' }
  Plug 'folke/lsp-colors.nvim'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'kyazdani42/nvim-web-devicons'
  Plug 'nvim-lua/plenary.nvim'
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'ryanoasis/vim-devicons'
  Plug 'morhetz/gruvbox'
  Plug 'leafgarland/typescript-vim'
  Plug 'mbbill/undotree'

" Rust plugin
Plug 'rust-lang/rust.vim'

  " Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'airblade/vim-rooter'

" NERD Commenter
Plug 'scrooloose/nerdcommenter'

Plug 'preservim/nerdtree'
Plug 'chun-yang/auto-pairs'

" Surround
Plug 'tpope/vim-surround'

" Auto complete
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" javascript syntax
Plug 'pangloss/vim-javascript'

" JSX
Plug 'mxw/vim-jsx'

" Nyu scheme
Plug 'ayu-theme/ayu-vim'

" SapceCamp scheme
Plug 'jaredgorski/spacecamp'

" Code dark theme
Plug 'tomasiser/vim-code-dark'

" Syntax errors
Plug 'dense-analysis/ale'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Prettier
Plug 'sbdchd/neoformat'

" Harpooon!
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon'

endif

Plug 'groenewege/vim-less', { 'for': 'less' }

call plug#end()

set termguicolors     " enable true colors support
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
autocmd BufWritePre *.js Neoformat

" colorscheme codedark
" let g:airline_theme = 'codedark'

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:codedark_term256=0
let g:gruvbox_invert_selection='0'

" Line colors
" hi Visual  guifg=White guibg=LightBlue gui=none
" Default Colors for CursorLine

highlight ColorColumn ctermbg=0 guibg=grey
hi SignColumn guibg=none
hi CursorLineNR guibg=None

" Background color
highlight Normal guibg=none

" Line number color
highlight LineNr guifg=#5eacd3
highlight netrwDir guifg=#5eacd3

highlight CursorLine guibg=#3E3D32
highlight Cursor guibg=#A6E22E;

