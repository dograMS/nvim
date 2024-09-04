function colormypencil(color)
	color = color or 'rose-pine-moon'
	vim.cmd.colorscheme(color)
end

require('rose-pine').setup({
	styles = {
		bold = true,
		italic = false,
		transparency = false,
	}
})

colormypencil()

