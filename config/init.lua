-- Orchard: a thoughtfully configured Neovim.

vim.loader.enable()

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("orchard.options")
require("orchard.highlights")
require("orchard.keymaps")
require("orchard.autocmds")
