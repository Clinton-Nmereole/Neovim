local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'eslint',
	'rust_analyzer',
	'sumneko_lua',
	'tsserver',
	'pylsp',
	'clangd',
	'julials',
	'hls',
	'gopls',
     'pyright'

})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- To learn how to configure a language server
-- see :help lsp-zero.configure()

lsp.setup()
