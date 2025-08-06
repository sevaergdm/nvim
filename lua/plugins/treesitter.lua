return {
   "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        -- enable syntax highlighting
        highlight = { enable = true },
        -- enable indentation
        indent = { enable = true },
        auto_install = true,
      })
    end
}
