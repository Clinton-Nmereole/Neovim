local opt = vim.opt

-- number line
opt.nu = true
opt.rnu = true

--tab space
opt.tabstop = 5
opt.softtabstop = 5
opt.shiftwidth = 5
opt.expandtab = true

--wrap
opt.wrap = false

opt.termguicolors = true

--Set lualine as statusline
require('lualine').setup{
     options = {
          icons_enabled = true,
          theme = 'tokyonight',
          component_separators = '|',
          section_separators = '',
     }
}


opt.updatetime = 50

opt.colorcolumn = "200"


opt.list = true
--opt.listchars:append "eol:↴"

require("indent_blankline").setup {
    char = '¦',
    show_end_of_line = true,
}



opt.clipboard = 'unnamedplus'



