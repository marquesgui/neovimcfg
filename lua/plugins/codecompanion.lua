return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    -- The following are optional:
    { "MeanderingProgrammer/render-markdown.nvim", ft = { "markdown", "codecompanion" } },
  },
  opts = {
    strategies = {
      chat = {
        adapter = "llama3",
      },
      inline = {
        adapter = "llama3",
      },
    },
    adapters = {
      llama3 = function()
        return require("codecompanion.adapters").extend("ollama", {
          name = "llama3",
          schema = {
            model = {
              default = "llama3.2:latest",
            },
          },
        })
      end
    },
    display = {
      chat = {
        window = {
          position = "right"
        }
      }
    }
  }
}
