local lsp = require('lsp-zero')
lsp.preset('recommended')

lsp.ensure_installed({
	'eslint',
	'rust_analyzer',
	'tsserver',
	'pylsp',
	'clangd',
	'julials',
	'hls',
	'gopls',
     'pyright'

})

lsp.set_preferences({
     'sign_icons'
})


local cmp = require('cmp')
cmp.setup({
     snippet = {
          expand = function (args)
               require('luasnip').lsp_expand(args.body)
          end
     },
     sources = cmp.config.sources({
          {name = 'nvim-lsp' },
          {name = 'buffer' },
     })
})

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  virtual_lines = true,
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 100 
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

--local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- To learn how to configure a language server
-- see :help lsp-zero.configure()

lsp.setup()
