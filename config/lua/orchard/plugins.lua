local gh = function(repo)
  return "https://github.com/" .. repo
end

-- Revisions are pinned in nvim-pack-lock.json. Update with :lua vim.pack.update()
vim.pack.add({
  gh("folke/snacks.nvim"),
  gh("folke/which-key.nvim"),
  gh("lewis6991/gitsigns.nvim"),
  gh("esmuellert/codediff.nvim"),
}, { confirm = false })

require("which-key").setup({ preset = "helix" })
require("orchard.picker")
require("orchard.git")
