require("tokyonight").setup({
  style = "moon",
  light_style = "day",
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
    functions = {},
    variables = {},
    sidebars = "transparent",
    floats = "dark",
  },
})

vim.diagnostic.config { float = { border = "rounded" }, }

local colors = require("tokyonight.colors").setup({ style = "moon" })

function ColorMyPencils(color)
	-- color = color or "monokai"
	color = color or "tokyonight-moon"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "lightgrey" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = colors.bg })
	vim.api.nvim_set_hl(0, "BorderBG", { fg = colors.blue1, bg = colors.bg })
	vim.api.nvim_set_hl(0, "DiagnosticFloatingError", { bg = colors.bg })
end

ColorMyPencils()

-- Sets colors to line numbers Above, Current and Below  in this order
function LineNumberColors()
  vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = colors.fg })
  vim.api.nvim_set_hl(0, 'LineNr', { fg = colors.fg, bold=true })
  vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = colors.fg })
end

LineNumberColors()
