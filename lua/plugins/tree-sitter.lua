return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {"elixir", "eex", "heex", "lua", "html"},
      highlight = {enable = true},
      indent = {enable = true}
    })
  end
}

