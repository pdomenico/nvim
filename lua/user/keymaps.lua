local opts = {
	noremap = true,
	silent = true,
}

local term_opts = {
	silent = true,
}

local keymap = vim.api.nvim_set_keymap

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Leader keymaps
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)
-- keymap("n", "<leader>t", ":split<CR>:resize 20<CR>:term<CR>a", opts)

-- Save file
keymap("n", "<C-s>", ":lua vim.lsp.buf.formatting_sync()<CR>:w<CR>", opts)

-- Terminal
keymap("t", "<Esc>", "<C-\\><C-n>", term_opts)

-- Telescope
keymap("n", "<leader>f", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>g", ":Telescope live_grep<CR>", opts)

-- Bufferline
keymap("n", "H", ":BufferLineCyclePrev<CR>", opts)
keymap("n", "L", ":BufferLineCycleNext<CR>", opts)
keymap("n", "<C-w>", ":w<CR>:Bdelete!<CR>", opts)
