return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
    'eldritch-theme/eldritch.nvim',
    priority = 1000, -- Make sure to load this before all the other start plugins.
    config = function()
      ---@diagnostic disable-next-line: missing-fields
      require('eldritch').setup {
        transparent = true,
        on_highlights = function(highlights, colors)
          -- Override comment colors
          -- Variable colors
          highlights.Identifier = { fg = colors.bright_cyan }
          highlights['@variable'] = { fg = colors.bright_cyan } -- For treesitter variables
          -- highlights['@variable.builtin'] = { fg = colors.bright_red } -- For built-in variables like self, this
          highlights['@parameter'] = { fg = colors.orange } -- For function parameters
          highlights['@field'] = { fg = colors.bright_cyan } -- For object fields/properties
          -- Comment colors
          highlights.Comment = { fg = colors.dark5 }
          highlights['@comment'] = { fg = colors.dark5 } -- For treesitter comments
          highlights['@comment.block'] = { fg = colors.dark5 } -- For multiline/block comments
          highlights['@comment.documentation'] = { fg = colors.dark5 } -- For documentation comments
          highlights['@string.documentation'] = { fg = colors.dark5 } -- For docstrings
          highlights['@text.literal'] = { fg = colors.dark5 } -- For literal text blocks
          highlights['@text.reference'] = { fg = colors.dark5 } -- For reference text

          -- Punctuation colors
          highlights.Operator = { fg = colors.bright_green }
          highlights['@operator'] = { fg = colors.bright_green } -- For treesitter operators
          highlights['@punctuation'] = { fg = colors.bright_green } -- For punctuation like . , ; etc
          -- Function call colors
          highlights.Function = { fg = colors.dark_green }
          highlights['@function'] = { fg = colors.dark_green } -- For treesitter functions
          highlights['@function.call'] = { fg = colors.bright_red } -- For function calls
          highlights['@function.builtin'] = { fg = colors.bright_green } -- For built-in functions like print, len, etc
          highlights['@method'] = { fg = colors.dark_green } -- For method calls
          highlights['@method.call'] = { fg = colors.bright_red } -- For method calls
        end,
      }

      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme 'eldritch'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
