require("nvim-tree").setup()

vim.keymap.set('n', '<leader>nt', ':NvimTreeFindFileToggle<CR>')

function Open_nvim_tree()

  -- open the tree
  require("nvim-tree.api").tree.open()
end

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = Open_nvim_tree })
