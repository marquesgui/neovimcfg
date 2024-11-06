local telescope = require('telescope.builtin')

return {
  {
    "nvim-telescope/telescope.nvim",
    config = function()
      require('telescope').setup {
        extensions = {
          fzf = {
            fuzzy = true,
            override_generic_sorter = true,
            override_file_sorter = true,
            case_mode = "smart_case",
          },
          ['ui-selection'] = {
            require('telescope.themes').get_dropdown {}
          }
        }
      }
      require('telescope').load_extension('fzf')
      require('telescope').load_extension('ui-select')
    end,
    version = "0.1.8",
    dependencies = {
      {
        "nvim-lua/plenary.nvim"
      },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
      },
      {
        'nvim-telescope/telescope-ui-select.nvim',
      }
    },
    keys = {
      {
        '<leader>ff',
        function()
          telescope.find_files()
        end,
        desc = 'Telescope find files',
      },
      {
        '<leader>fg',
        function()
          telescope.live_grep()
        end,
        desc = 'Telescope live grep'
      },
      {
        '<leader>fb',
        function()
          telescope.buffers()
        end,
        desc = 'Telescope buffers'
      },
      {
        '<leader>fh',
        function()
          telescope.help_tags()
        end,
        desc = 'Telescope help tags'
      }
    }
  },
}
