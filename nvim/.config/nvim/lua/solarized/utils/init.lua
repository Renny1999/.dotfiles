local M = {}

-- this is the dark background
local dark    = '#1d2021'
local darkCursorLine    = '#32302f'

function M.default_settings()
	-- default settings function
	local settings = {
		solarized_visibility = 'normal',
		solarized_diffmode = 'normal',
		solarized_termtrans = 0,
		solarized_statusline = 'normal',
		solarized_italics = 1
	}

	for key,val in pairs(settings) do
		if vim.g[key] == nil then
			vim.g[key] = val
		end
	end
end

function M.highlighter(group, colors)
	-- setup funtion
	colors.guisp = colors.guisp or 'none'
	colors.style = colors.style or 'none'
	colors.bg = colors.bg or {'none', 'none'}
	local g_foreground = colors.fg[1]
	local c_foreground = colors.fg[2]
	local g_background = colors.bg[1]
	local c_background = colors.bg[2]
	local guisp = colors.guisp[1] or 'none'
	local style = colors.style or 'none'
	vim.cmd(string.format(
	'hi %s guifg=%s guibg=%s guisp=%s gui=%s ctermfg=%s ctermbg=%s cterm=%s',
	group, g_foreground, g_background, guisp, style, c_foreground, c_background, style
	))
end

-- italics and termtrans functions

function M.italics()
	if vim.g.solarized_italics == 1 then
		return 'italic'
	else
		return 'none'
	end
end

function M.termtrans(color)
	if vim.g.solarized_termtrans == 1 then
		return 'none'
	else
		return color
	end
end

-- unused
function M.termtransLineNr(color)
  if vim.g.solarized_termtrans == 1 then
    return {'none', 'none'}
  else
    return color
  end
end

-- this will configure dark background
function M.darkbg(color)
  if vim.g.solarized_termtrans == 1 then
    return M.termtrans(color)
  elseif vim.g.solarized_darkbg == 1 then
    return dark
  else
    return color
  end
end

-- this will set the background for the cursor line number for dark background
function M.darkbgNr(color)
  -- if vim.g.solarized_termtrans == 1 then
  --   return M.termtrans(color)
  -- elseif vim.g.solarized_darkbg == 1 then
  --   return darkCursorLine
  -- else
  --   return color
  -- end
  if vim.g.solarized_darkbg == 1 then
    return darkCursorLine
  else
    return color
  end
end


-- will set the line number to yellow
function M.lineNrFn(color)
  if vim.g.solarized_yellow_linenr == 1 then
    return {'#ffff00', 11}
  elseif vim.g.solarized_termtrans == 1 then
    return M.termtrans(color)
  -- elseif vim.g.solarized_darkbg == 1 then
  --   return {'#FFFFFF', 256}
  else
    return color
  end
end

return M
