-- Markdown renders in place: headings, code blocks, tables, and checklists
-- are styled in normal mode, raw in insert mode and on the cursor line.
-- Glyphs are plain Unicode; colors come from the orchard colorscheme.
local markdown = require("render-markdown")

local function map(lhs, rhs, desc, buf)
  vim.keymap.set("n", lhs, rhs, { desc = desc, buffer = buf })
end

markdown.setup({
  -- Nvim's own markdown highlighting already conceals link syntax.
  link = { enabled = false },
  latex = { enabled = false },
  sign = { enabled = false },

  heading = {
    icons = { "" },
    position = "inline",
    left_pad = { 1, 1, 0 },
  },
  code = {
    border = "thin",
    language_icon = false,
    language_pad = 1,
    left_pad = 1,
    highlight_language = "RenderMarkdownCodeInfo",
  },
  bullet = { icons = { "•", "◦" } },
  checkbox = {
    unchecked = { icon = "○" },
    checked = { icon = "●", scope_highlight = "RenderMarkdownCheckedScope" },
    custom = { todo = { rendered = "◐" } },
  },
  quote = { icon = "▎", highlight = { "RenderMarkdownQuote" } },
  pipe_table = { preset = "round" },

  on = {
    attach = function(ctx)
      require("which-key").add({ { "<leader>m", group = "Markdown", buffer = ctx.buf } })
      map("<leader>mp", markdown.preview, "Preview to the side", ctx.buf)
      map("<leader>mr", markdown.buf_toggle, "Toggle rendering", ctx.buf)
    end,
  },
})
