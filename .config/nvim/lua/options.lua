require "nvchad.options"

-- add yours here!

local o = vim.o
o.scrolloff=8
o.sidescrolloff=8
o.relativenumber=true

o.tabstop=4
o.shiftwidth=4
o.expandtab=true

vim.api.nvim_create_autocmd("FileType", {
  pattern = "html",
  callback = function()
    vim.opt_local.tabstop = 2
    vim.opt_local.shiftwidth = 2
    vim.opt_local.expandtab = true
  end,
})
--o.cursorlineopt ='both' -- to enable cursorline!
