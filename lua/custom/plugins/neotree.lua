vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    lazy = false,
    keys = {
      { "<leader>;", "<cmd>Neotree position=current toggle reveal<cr>", desc = "Toggle NeoTree" },
    },
    config = function()
      require('neo-tree').setup {
        filesystem = {
          follow_current_file = {
            enable = true,
          },
          filtered_items = {
            visible = true,
            show_hidden_count = true,
            hide_dotfiles = false,
            hide_gitignore = false,
          },
          disable_netrw = true,
          hijack_netrw_behavior = "open_current",
        }
      }
    end,
}
