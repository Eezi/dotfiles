" In your init.lua or init.vim
set termguicolors

nnoremap <silent>, :BufferLineCycleNext<CR>
nnoremap <silent>. :BufferLineCyclePrev<CR>

lua << EOF
require("bufferline").setup{}
EOF
