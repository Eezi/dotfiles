syntax on
set tabstop=2 
set softtabstop=2
set shiftwidth=2
set relativenumber
set expandtab
set nowritebackup
set textwidth=80
set nu 
set smartindent 
set nowrap 
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set hls          "highlight search matches
set is           "higlight on search
set t_Co=256
set t_ut=
"set cursorline
set mouse=a

" Test
set history=500

" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread

let mapleader = ","
" Fast saving
nmap <leader>w :w!<cr>
nmap <leader>t :tabnew<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines tothe cursor - when moving vertically using j/k
set so=7

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore files
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*

" Always show current position
set ruler

" Height of the command bar
set cmdheight=1

" A buffer becomes hidden when it is abandoned
set hid

" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=,>,h,l

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch

" How many tenths of a second to blink when matching brackets
set mat=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Enable syntax highlighting
syntax enable

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

highlight LineNr guifg=#5eacd3

nmap <S-e> :NERDTreeToggle<CR>
nnoremap <C-p> :Files<CR>
nnoremap <C-b> :Buffers<CR>
nnoremap <C-h> :History<CR>
nmap <C-Tab> :tabprev<Return>
nmap <Tab> :tabnext<Return>
nnoremap <leader>f <cmd>Telescope find_files<cr>
noremap Y "*y
noremap yiw yw

":hi LineNr guibg=none guifg=#ffffff

let g:NERDTreeWinPos = "right"
set background=dark

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
if has("unix")
  let s:uname = system("uname -s")
  " Do Mac stuff
  if s:uname == "Darwin\n"
    runtime ./macos.vim
  endif
endif

runtime ./maps.vim

