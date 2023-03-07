vim.g.mapleader = " "
local keymap = vim.keymap --for concisensess

--to go to the previous directory
keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- window split
keymap.set("n", "<leader>sv", "<C-w>v") --split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") --split window horizontally
keymap.set("n", "<leader>ml", "<C-w>l") --split window left vertically
keymap.set("n", "<leader>mr", "<C-w>h") --split window right vertically
keymap.set("n", "<leader>mu", "<C-w>k") --split window up horizontally
keymap.set("n", "<leader>md", "<C-w>j") --split window down horizontally




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

-- Javascript and Typescript
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

-- Julia 
vim.api.nvim_create_autocmd("FileType", {
pattern = "julia" ,
command = [[nnoremap <buffer> <leader>1 :w<CR> :term julia %<CR>]]
})

--Nim 
vim.api.nvim_create_autocmd("FileType", {
pattern = "nim" ,
command = [[nnoremap <buffer> <leader>1 :w<CR> :term nim c -r %<CR>]]
})

--Rust
vim.api.nvim_create_autocmd("FileType", {
pattern = "rust" ,
command = [[nnoremap <buffer> <leader>1 :w<CR> :term rustc % && %<<CR>]]
})

vim.api.nvim_create_autocmd("FileType", {
pattern = "rust" ,
command = [[nnoremap <buffer> <leader>2 :w<CR> :term cargo run <CR>]]
})

--Latex
vim.api.nvim_create_autocmd("FileType", {
pattern = "tex",
command = [[nnoremap <buffer> <leader>1 :w<CR> :VimtexCompile<CR>]]
})
