vim.loader.disable()

-- require("config.lazy")
require("renny.lualine")
require("renny.comment")
require("renny.telescope")
require("renny.indent_blankline")
require("renny.luasnip")
require("renny.completion")
require("renny.ts")
require("mason").setup()
require("mason-lspconfig").setup()
require("renny.lsp")
require("renny.leap")
-- require("renny.shade")
require("renny.cscope")



-- our goal is to delete buffer when going back the stack with ctrl-t
DBG = 0
function mydbg(x)
  if (DBG == 1) then
    print(x)
  end
  return
end

function mypop()
  local windowid = vim.fn.win_getid()
  local curbufnr = vim.fn.bufnr()
  local tagstack = vim.fn.gettagstack(windowid)
  local prev
  local prevbufnr

  local res,retval -- used for calling pop
  -- check if the next elem in the tag stack and the current one is the same buffer

  local items = tagstack['items']
  local curidx = tagstack['curidx']
  mydbg('curidx ' .. curidx)
  mydbg('length ' .. tagstack['length'])

  if curidx == 1 then
    mydbg('popping due to curidx=1')
    goto pop_one
  end

  prev = items[curidx-1]

  if prev == nil then
    mydbg('popping due to prev=nil')
    goto pop_one
  end

  prevbufnr = prev['bufnr']

  mydbg('before pop: prev buf number ' .. prev['bufnr'])
  mydbg('before pop: current buf number ' .. curbufnr)
  mydbg('stub')

  -- pop the tag, then delete the buffer
  res, retval = pcall(pp)

  if res then
  else
    local x,y = string.find(retval, 'Vim%(pop%):E555:')
    if (x ~= nil) then
      print('E555: at bottom of tag stack')
    else
      printerr(retval)
    end
  end

  mydbg('after pop: prev buf number ' .. prev['bufnr'])
  mydbg('after pop: current buf number ' .. curbufnr)

  if (prev['bufnr'] ~= curbufnr) then
    -- delete the buffer if it is not opened in any other window
    local bufwins = vim.fn.win_findbuf(curbufnr)
    local bufwinnums = table.getn(bufwins)
    mydbg(bufwinnums .. ' windows with the buffer after pop')
    if bufwinnums == 0 then
      if vim.fn.bufexists(curbufnr) then
        vim.cmd('bdelete' .. curbufnr)
      end
    else
      mydbg('cannot delete buffer ' .. curbufnr .. ' because it is open in ' .. bufwinnums .. ' windows')
    end
  end

::pop_one::
  return

end

-- vim.keymap.set('n', '<C-t>', "<cmd>lua require('renny.init') mypop()<CR> :pop<CR>", {noremap=true})
vim.keymap.set('n', '<C-t>', "<cmd>lua require('renny.init') mypop()<CR>", {noremap=true})

function pp()
  vim.cmd('pop')
end
