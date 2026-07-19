-- Language-specific syntax/filetype plugins (jonhoo-inspired)
return {
  -- fish shell syntax
  { "khaveesh/vim-fish-syntax", ft = { "fish" } },
  -- terraform
  { "hashivim/vim-terraform", ft = { "terraform" } },
  -- toml
  { "cespare/vim-toml", ft = { "toml" } },
  -- yaml with treesitter integration
  {
    "cuducos/yaml.nvim",
    ft = { "yaml" },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
    },
  },
}
