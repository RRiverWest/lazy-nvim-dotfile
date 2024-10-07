return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  -- or                              , branch = '0.1.x',
  dependencies = { 'nvim-lua/plenary.nvim' },

  config = function()
    require('telescope').setup({
      defaults = {
        mappings = {
          n = {
            ['<Esc>'] = require('telescope.actions').close,
            ['q'] = require('telescope.actions').close,
          },
          i = {
            ['<C-g>'] = require('telescope.actions').close,
          },
        },
      }
    })
  end,
}
