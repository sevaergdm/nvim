return {
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        cond = function()
          return vim.fn.executable("make") == 1
        end,
      },
      "nvim-telescope/telescope-ui-select.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")
      vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
      vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
      require("telescope").setup({
        defaults = {
          sorting_strategy = "ascending",
        },
        extensions = {
          fzf = {},
          ["ui-select"] = {
            require("telescope.themes").get_dropdown {}
          },
        },
      })
      require("telescope").load_extension("fzf")
      require("telescope").load_extension("ui-select")
    end
  },
  --{
  --  "nvim-telescope/telescope-ui-select.nvim",
  --  config = function()
  --    require("telescope").setup({
  --      extensions = {
  --        ["ui-select"] = {
  --          require("telescope.themes").get_dropdown {
  --          }
  --       }
  --      }
  --    })
      -- To get ui-select loaded and working with telescope, you need to call
      -- load_extension, somewhere after setup function:
  --    require("telescope").load_extension("ui-select")
  --  end
  --},
}
