require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map('n', "<leader>pp", '"+p', {desc = "paste from system clipboard"})
map('v', "<leader>y", '"+y', {desc = "copy to system clipboard"})

map('n', "<leader>rr", ':%s/', {desc = "replace all copys of (oldname/newname)"})
map('n', "<F5>", ':! ./build.sh && [[ -f run.sh ]] && ./run.sh<cr>', {desc = "runs ./build.sh and ./run.sh (if run.sh exists) in current directory"})
map('n', "<F2>", 'gdcgn', {desc = "rename"})

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
