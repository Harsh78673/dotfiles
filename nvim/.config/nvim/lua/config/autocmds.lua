-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- ================ Custom added auto save ===================

-- Auto-save on text change
vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
  pattern = "*",
  command = "silent! write",
})
--
-- =================== auto save with a timer ==================
-- -- Auto-save every 5 minutes
-- vim.api.nvim_create_autocmd("CursorHold", {
--     pattern = "*",
--     command = "silent! write"
-- })
-- vim.o.updatetime = 4000  -- Set updatetime to 5 minutes (in milliseconds)
--
--
-- ================ ends here =================
--
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
