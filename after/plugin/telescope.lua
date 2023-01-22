local builtin = require('telescope.builtin')

--find files
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})

--file search
vim.keymap.set('n', '<leader>fs', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
