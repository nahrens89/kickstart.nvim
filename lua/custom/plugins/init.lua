-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Disabled none-ls in favor of nvim-lint for Python linting
  -- {
  --   'nvimtools/none-ls.nvim',
  --   dependencies = {
  --     'nvimtools/none-ls-extras.nvim',
  --     'jayp0521/mason-null-ls.nvim',
  --   },
  --   config = function()
  --     -- list of formatters & linters for mason to install
  --     require('mason-null-ls').setup {
  --       ensure_installed = {
  --         'ruff',
  --         'prettier',
  --         'shfmt',
  --         'stylua',
  --         'vale',
  --       },
  --       automatic_installation = true,
  --     }
  --     local null_ls = require 'null-ls'
  --     local sources = {
  --       -- Remove Ruff sources since we're using Ruff LSP server now
  --       -- require('none-ls.formatting.ruff').with { extra_args = { '--extend-select', 'I', '--line-length=120' } },
  --       -- require('none-ls.formatting.ruff_format').with { extra_args = { '--line-length=120' } },
  --       null_ls.builtins.formatting.prettier.with {
  --         filetypes = { 'json', 'yaml', 'markdown','html', 'css', 'javascript', 'typescript' },
  --         extra_args = { '--print-width', '120', '--prose-wrap', 'always','--tab-width', '2', '--indent-type', 'Spaces', '--indent-width', '2'}
  --       },
  --       null_ls.builtins.formatting.shfmt.with { extra_args = { '--indent-type', 'Spaces', '--indent-width', '4' } },
  --       null_ls.builtins.formatting.stylua.with { extra_args = { '--indent-type', 'Spaces', '--indent-width', '2' } },
  --       null_ls.builtins.completion.spell,
  --     }
  --     local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
  --     null_ls.setup {
  --       debug = true, -- Enable debug mode. Inspect logs with :NullLsLog.
  --       sources = sources,
  --       -- you can reuse a shared lspconfig on_attach callback here
  --       on_attach = function(client, bufnr)
  --         if client.supports_method 'textDocument/formatting' then
  --           vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
  --           vim.api.nvim_create_autocmd('BufWritePre', {
  --             group = augroup,
  --             buffer = bufnr,
  --             callback = function()
  --               vim.lsp.buf.format { async = false }
  --             end,
  --           })
  --         end
  --       end,
  --     }
  --   end,
  -- },
  {
    'linux-cultist/venv-selector.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      'mfussenegger/nvim-dap-python', --optional
      { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' } },
    },
    lazy = false,
    branch = 'regexp', -- This is the regexp branch, use this for the new version
    keys = {
      { ',v', '<cmd>VenvSelect<cr>' },
    },
    ---@type venv-selector.Config
    opts = {
      -- Your settings go here
    },
  },
}
