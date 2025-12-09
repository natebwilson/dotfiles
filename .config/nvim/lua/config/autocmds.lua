-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter" }, {
  callback = function(args)
    local buf = args.buf
    local bt = vim.bo[buf].buftype
    local ft = vim.bo[buf].filetype

    -- Codex uses filetype "codex" and buftype "terminal" when use_buffer = false
    if bt == "terminal" and ft == "codex" then
      vim.cmd("startinsert")
    end
  end,
})
