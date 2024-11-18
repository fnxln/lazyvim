-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
if vim.g.neovide then
  vim.g.gui_font_default_size = 14
  vim.g.gui_font_size = vim.g.gui_font_default_size
  vim.g.neovide_transparency = 0.8
  vim.g.neovide_refresh_rate = 75

  -- Default scale factor
  vim.g.neovide_scale_factor = 1.0

  -- Helper functions for scaling
  local function increase_scale(factor)
    vim.g.neovide_scale_factor = math.min(vim.g.neovide_scale_factor + factor, 2.0) -- Max scale factor
    print(string.format("Scale Factor: %.2f", vim.g.neovide_scale_factor))
  end

  local function decrease_scale(factor)
    vim.g.neovide_scale_factor = math.max(vim.g.neovide_scale_factor - factor, 0.5) -- Min scale factor
    print(string.format("Scale Factor: %.2f", vim.g.neovide_scale_factor))
  end

  local function increase_transparency(step)
    vim.g.neovide_transparency = math.min(vim.g.neovide_transparency + step, 1.0) -- Max transparency
    print(string.format("Transparency: %.2f", vim.g.neovide_transparency))
  end

  local function decrease_transparency(step)
    vim.g.neovide_transparency = math.max(vim.g.neovide_transparency - step, 0.1) -- Min transparency
    print(string.format("Transparency: %.2f", vim.g.neovide_transparency))
  end

  -- Key mappings
  vim.api.nvim_set_keymap("n", "<C-=>", ":lua increase_scale(0.1)<CR>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<C-->", ":lua decrease_scale(0.1)<CR>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<C-+>", ":lua increase_transparency(0.05)<CR>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<C-_>", ":lua decrease_transparency(0.05)<CR>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<C-0>", ":lua vim.g.neovide_scale_factor = 1.0 print('Scale Factor Reset')<CR>", { silent = true, noremap = true })
  vim.api.nvim_set_keymap("n", "<C-)>", ":lua vim.g.neovide_transparency = 0.8 print('Transparency Reset')<CR>", { silent = true, noremap = true })
end

