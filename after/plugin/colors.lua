require("tokyonight").setup({
  --  --use the night style
  style = "night",
  --  --disable italic for functions
  styles = {
    functions = {}
  },
  sidebars = { "qf", "vista_kind", "terminal", "packer" },
 -- -- Change the "hint" color to the "orange" color, and make the "error" color bright red
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})


vim.g.sonokai_style = "andromeda"
--vim.g.sonokai_better_performance = 1


function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

     --transparent background
	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
