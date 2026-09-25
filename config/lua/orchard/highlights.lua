-- Floats and popup menus share the editor background so rounded borders
-- don't leave square corners of a different color.
local function apply()
  local get = function(name)
    return vim.api.nvim_get_hl(0, { name = name, link = false })
  end
  local bg = get("Normal").bg
  local border = { fg = get("NonText").fg, bg = bg }

  vim.api.nvim_set_hl(0, "NormalFloat", { bg = bg })
  vim.api.nvim_set_hl(0, "FloatBorder", border)
  vim.api.nvim_set_hl(0, "Pmenu", { bg = bg })
  vim.api.nvim_set_hl(0, "PmenuBorder", border)
end

apply()

vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("orchard.highlights", { clear = true }),
  desc = "Reapply Orchard float styling",
  callback = apply,
})
