if !exists('g:loaded_telescope') | finish | endif

nnoremap <leader>f <cmd>Telescope find_files<cr>
nnoremap <leader>g <cmd>Telescope live_grep<cr>
nnoremap <leader>b <cmd>Telescope buffers<cr>
nnoremap <leader>h <cmd>Telescope help_tags<cr>
nnoremap <leader>gc <cmd>Telescope git_branches<cr>


lua << EOF
function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')

telescope.setup{
  defaults = {
    file_ignore_patterns = {"node_modules"},
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF



