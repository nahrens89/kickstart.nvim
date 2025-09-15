return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    theme = 'auto', -- try changing this to see if it takes effect
    options = { -- this should be under 'options', not at root level
      component_separators = '|',
      section_separators = '',
    },
    sections = {
      lualine_a = { 'mode' },
      lualine_b = {
        'branch',
        {
          'diff',
          symbols = { added = '', modified = '', removed = '' },
          -- symbols = { added = '+', modified = '~', removed = '-' },
        },
        'diagnostics',
      },
      lualine_c = { 'filename' },
      lualine_x = { 'encoding', 'fileformat', 'filetype' },
      lualine_y = { 'progress' },
      lualine_z = { 'location' },
    },
  },
}
