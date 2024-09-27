local solarized_normal = require('solarized.solarized-normal.highlights')
local darkColors = {
	none = 'none',
	base02  = '#073642',
	red     = '#dc322f',
	green   = '#859900',
	yellow  = '#b58900',
	blue    = '#268bd2',
	magenta = '#d33682',
	cyan    = '#2aa198',
	base2   = '#eee8d5',
	base03  = '#002b36',
	back    = '#002b36',
	orange  = '#cb4b16',
	base01  = '#586e75',
	base00  = '#657b83',
	base0   = '#839496',
	violet  = '#6c71c4',
	base1   = '#93a1a1',
	base3   = '#fdf6e3',
	err_bg  = '#fdf6e3',
}

local lightColors = {
	none = 'none',
	base2   = '#073642',
	red     = '#dc322f',
	green   = '#859900',
	yellow  = '#b58900',
	blue    = '#268bd2',
	magenta = '#d33682',
	cyan    = '#2aa198',
	base02  = '#eee8d5',
	base3   = '#002b36',
	orange  = '#cb4b16',
	base1   = '#586e75',
	base0   = '#657b83',
	base00  = '#839496',
	violet  = '#6c71c4',
	base01  = '#93a1a1',
	base03  = '#fdf6e3',
	back    = '#fdf6e3',
	err_bg  = '#fdf6e3',
}

if vim.o.bg == 'light' then
	solarized_normal.load_syntax(lightColors)
	solarized_normal.terminal_colors(lightColors)
end

if vim.o.bg == 'dark' then
	solarized_normal.load_syntax(darkColors)
	solarized_normal.terminal_colors(darkColors)
end
