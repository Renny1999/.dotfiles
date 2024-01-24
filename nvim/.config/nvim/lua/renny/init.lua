require("impatient").enable_profile()
require("renny.lualine")
require("renny.comment")
require("renny.telescope")
require("renny.indent_blankline")
require("renny.luasnip")
require("renny.completion")
require("renny.ts")
require("renny.lsp")
require("renny.leap")
-- require("cscope_maps").setup({})


-- our goal is to delete buffer when going back the stack with ctrl-t

DBG = 1
function dbg(x)
  if (DBG == 1) then
    print(x)
  end
end

function mypop()
  local windowid = vim.fn.win_getid()
  local curbufnr = vim.fn.bufnr()
  local tagstack = vim.fn.gettagstack(windowid)
  local prev
  -- check if the next elem in the tag stack and the current one is the same buffer

  local items = tagstack['items']
  local curidx = tagstack['curidx']
  dbg('curidx ' .. curidx)
  dbg('length ' .. tagstack['length'])

  if curidx == 1 then
    dbg('popping due to curidx=1')
    goto pop_one
  end

  prev = items[curidx-1]

  if prev == nil then
    dbg('popping due to prev=nil')
    goto pop_one
  end

  dbg('prev buf number ' .. prev['bufnr'])
  dbg('current buf number ' .. curbufnr)

  if (prev['bufnr'] ~= curbufnr) then
    -- close the current buffer
    if vim.fn.bufexists(curbufnr) then
      vim.cmd('bdelete' .. curbufnr)
    end
  end

::pop_one::
  return
  -- local res,retval = pcall(pp)
  -- if res then
  -- else
  --   local x,y = string.find(retval, 'Vim%(pop%):E555:')
  --   if (x ~= nil) then
  --     print('E555: at bottom of tag stack')
  --   else
  --     printerr(retval)
  --   end
  -- end

end

vim.keymap.set('n', '<C-t>', "<cmd>lua require('renny.init') mypop()<CR> :pop<CR>", {noremap=true})

function pp()
  vim.cmd('pop')
end


