" In your init.lua or init.vim
set termguicolors

nnoremap <silent>1 :BufferLineCycleNext<CR>
nnoremap <silent>2 :BufferLineCyclePrev<CR>

lua << EOF
require("bufferline").setup{}
EOF
