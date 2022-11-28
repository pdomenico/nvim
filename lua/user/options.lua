local options = {
	mouse = "a",
	splitbelow = true,
	splitright = true,
	smartcase = true,
	smartindent = true,
	shiftwidth = 2,
	tabstop = 2,
	cursorline = true,
	number = true,
	relativenumber = true,
	clipboard = "unnamedplus"
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

vim.cmd [[set nohlsearch]]
