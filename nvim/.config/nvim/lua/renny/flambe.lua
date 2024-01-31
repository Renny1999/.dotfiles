local util = require 'lspconfig.util'
local ade = os.getenv("ADE_PRODUCT_ROOT")
local index_location = ''
local index_option = ''
if ade ~= nil then
  index_location = ade .. "/utl/flambe.dex"
  index_option = '--index-file='..index_location
end

-- https://clangd.llvm.org/extensions.html#switch-between-sourceheader
local function switch_source_header(bufnr)
  bufnr = util.validate_bufnr(bufnr)
  local clangd_client = util.get_active_client_by_name(bufnr, 'clangd')
  local params = { uri = vim.uri_from_bufnr(bufnr) }
  if clangd_client then
    clangd_client.request('textDocument/switchSourceHeader', params, function(err, result)
      if err then
        error(tostring(err))
      end
      if not result then
        print 'Corresponding file cannot be determined'
        return
      end
      vim.api.nvim_command('edit ' .. vim.uri_to_fname(result))
    end, bufnr)
  else
    print 'method textDocument/switchSourceHeader is not supported by any servers active on the current buffer'
  end
end

local root_files = {
  '.clangd',
  '.clang-tidy',
  '.clang-format',
  'compile_commands.json',
  'compile_flags.txt',
  'configure.ac', -- AutoTools
}

local default_capabilities = {
  textDocument = {
    completion = {
      editsNearCursor = true,
    },
  },
  offsetEncoding = { 'utf-8', 'utf-16' },
}

return {
  default_config = {
    -- cmd = { '/ade_autofs/ade_infra/PARFAIT_PT.LSP_LINUX.X64.rdd/LATEST/flambe/bin/flambe', '--index-file=$ADE_PRODUCT_ROOT/utl/flambe.dex', '-j=1'},
    cmd = { '/ade_autofs/ade_infra/PARFAIT_PT.LSP_LINUX.X64.rdd/LATEST/flambe/bin/flambe', index_option, '-j=1'},
    -- cmd = { '/ade_autofs/ade_infra/PARFAIT_PT.LSP_LINUX.X64.rdd/LATEST/flambe/bin/flambe', '-j=1'},
    -- '--index-file-origin=/ade/rehong_odtest/timesten'},
    -- cmd = { 'clangd', '-j=4' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    -- cmd = { '/ade_autofs/ade_infra/PARFAIT_PT.LSP_LINUX.X64.rdd/LATEST/flambe/bin/flambe', '-j=1'},
    -- '--index-file-origin=/ade/rehong_odtest/timesten'},
    -- cmd = { 'clangd', '-j=4' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = function(fname)
      return util.root_pattern(unpack(root_files))(fname) or util.find_git_ancestor(fname)
    end,
    single_file_support = true,
    capabilities = default_capabilities,
  },
  commands = {
    ClangdSwitchSourceHeader = {
      function()
        switch_source_header(0)
      end,
      description = 'Switch between source/header',
    },
  },
  docs = {
    description = [[
https://clangd.llvm.org/installation.html

**NOTE:** Clang >= 11 is recommended! See [this issue for more](https://github.com/neovim/nvim-lsp/issues/23).

clangd relies on a [JSON compilation database](https://clang.llvm.org/docs/JSONCompilationDatabase.html) specified as compile_commands.json, see https://clangd.llvm.org/installation#compile_commandsjson
]],
    default_config = {
      root_dir = [[
        root_pattern(
          '.clangd',
          '.clang-tidy',
          '.clang-format',
          'compile_commands.json',
          'compile_flags.txt',
          'configure.ac',
          '.git'
        )
      ]],
      capabilities = [[default capabilities, with offsetEncoding utf-8]],
    },
  },
}

