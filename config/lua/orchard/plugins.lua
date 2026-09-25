local gh = function(repo)
  return "https://github.com/" .. repo
end

-- Revisions are pinned in nvim-pack-lock.json. Update with :lua vim.pack.update()
vim.pack.add({
  gh("folke/snacks.nvim"),
  gh("nvim-mini/mini.icons"),
  gh("folke/which-key.nvim"),
}, { confirm = false })

require("mini.icons").setup()
require("which-key").setup({ preset = "helix" })
require("orchard.picker")
