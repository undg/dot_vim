if has_key(plugs, "telescope.nvim")
  " Find files using Telescope command-line sugar.
  " nnoremap <leader>ff <cmd>Telescope find_files<cr>
  " nnoremap <leader>fg <cmd>Telescope live_grep<cr>
  " nnoremap <leader>tb <cmd>Telescope buffers<cr>
  " nnoremap <leader>fh <cmd>Telescope help_tags<cr>

  " Using Lua functions
  nnoremap <leader>. <cmd>lua require('telescope.builtin').git_files()<cr>
  nnoremap <leader>m <cmd>lua require('telescope.builtin').find_files()<cr>
  nnoremap <leader>b <cmd>lua require('telescope.builtin').buffers()<cr>
  nnoremap <leader>th <cmd>lua require('telescope.builtin').help_tags()<cr>
  nnoremap <leader>tg <cmd>lua require('telescope.builtin').live_grep()<cr>
  nnoremap <leader>ts <cmd>lua require('telescope.builtin').grep_string()<cr>
  nnoremap <leader>tk <cmd>lua require('telescope.builtin').keymaps()<cr>

  " Replace default keybinding
  nnoremap z= <cmd>lua require('telescope.builtin').spell_suggest()<cr>
endif
