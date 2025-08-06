return {
  {
    --"catppuccin/nvim",
    --name = "catppuccin",
    --lazy = false,
    --priority = 1000,
    --config = function()
      --require("catppuccin").setup({
        --flavour = "mocha",
        --transparent_background = false,
      --})
      --vim.cmd.colorscheme "catppuccin"
      --vim.api.nvim_set_hl(0, "LineNrAbove", { fg="#51B3EC", bold=true })
      --vim.api.nvim_set_hl(0, "LineNr", { fg="white", bold=true })
      --vim.api.nvim_set_hl(0, "LineNrBelow", { fg="#FB508F", bold=true })
    --end,

    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({})
      vim.cmd.colorscheme "tokyonight"
      vim.api.nvim_set_hl(0, "LineNrAbove", { fg="#51B3EC", bold=true })
      vim.api.nvim_set_hl(0, "LineNr", { fg="white", bold=true })
      vim.api.nvim_set_hl(0, "LineNrBelow", { fg="#FB508F", bold=true })
    end
  },
}
