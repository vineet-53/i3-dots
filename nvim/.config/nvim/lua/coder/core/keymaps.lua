vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
-- explorer
-- vim.keymap.set("n", "<C-b>", "<cmd>Rexplore<CR>")

-- increment/decrement numbers
vim.keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
vim.keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
vim.keymap.set("n", "<C-s>v", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
vim.keymap.set("n", "<C-s>s", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally

-- exit nvim
vim.keymap.set("n", "<C-c>", "<cmd>:qa<CR><cmd>:qa<CR>")
vim.keymap.set("n", "<leader><leader>", function()
  return "<cmd>:source ~/.config/nvim/init.lua<CR>"
end)
-- move down the line or up to the line
vim.keymap.set("v", "J", ":m .-2<CR>==")
vim.keymap.set("v", "K", ":m .+1<CR>==")

-- vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- greatest remap ever
vim.keymap.set("x", ";p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, ";y", [["+y]])

vim.keymap.set({ "n", "v" }, ";d", [["_d]])
vim.keymap.set("n", "<leader>!", "<cmd>:q!<CR>", { desc = "Quit the file without Saving" })

-- format
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- trouble
vim.keymap.set("n", "<leader>k", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>K", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>J", "<cmd>lprev<CR>zz")

-- change all occurance
vim.keymap.set("n", "<A-l>", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- move to next buff
vim.keymap.set("n", "<C-Tab>", "<C-^>")
-- edit keymaps
vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/coder/core/keymaps.lua<CR>")

-- move windows
-- vim.keymap.set("n", "sv", "<C-w>v")
-- vim.keymap.set("n", "ss", "<C-w>s")
-- vim.keymap.set("n", "sx", "<C-w><C-o>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
