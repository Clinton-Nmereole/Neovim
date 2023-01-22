vim.g.mapleader = " "
local keymap = vim.keymap --for concisensess

--to go to the previous directory
keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- python keymap
vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	command = [[nnoremap <buffer> <F9> :w<CR> :!python %<CR>]]
})


vim.api.nvim_create_autocmd("FileType", {
	pattern = "python",
	command = [[nnoremap <buffer> <leader>1 :w<CR> :term python %<CR>]]
})

-- c++ keymap
vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	command = [[nnoremap <buffer> <leader>1 :w<CR> :term gcc % -o %<<CR>]]
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "cpp",
	command = [[nnoremap <buffer> <F9> :w<CR> :!gcc % -o %<<CR>]]
})


-- haskell keymap
vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	command = [[nnoremap <buffer> <leader>1 :w<CR> :term runghc %<CR>]]
})


vim.api.nvim_create_autocmd("FileType", {
	pattern = "haskell",
	command = [[nnoremap <buffer> <F9> :w<CR> :!runghc %<CR>]]
})

--go keymap
vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	command = [[nnoremap <buffer> <F9> :w<CR> :!go run %<CR>]]
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	command = [[nnoremap <buffer> <leader>1 :w<CR> :term go run %<CR>]]
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = "go",
	command = [[nnoremap <buffer> <leader>2 :w<CR> :term go build %<CR>]]
})
--go imports
vim.api.nvim_create_autocmd("FileType", {
pattern = "go",
command = [[nnoremap <buffer> <leader><leader>1 :w<CR> :!goimports -w %<CR>]]
})

-- Javascript
vim.api.nvim_create_autocmd("FileType", {
pattern = "javascript",
command = [[nnoremap <buffer> <leader>1 :w<CR> :term node %<CR>]]
})

vim.api.nvim_create_autocmd("FileType", {
pattern = "typescript",
command = [[nnoremap <buffer> <leader>1 :w<CR> :term ts-node %<CR>]]
})


-- Dart and Flutter
vim.api.nvim_create_autocmd("FileType", {
pattern = "dart" ,
command = [[nnoremap <buffer> <leader>1 :w<CR> :term dart %<CR>]]
})





