local status_ok, autopairs = pcall(require, "nvim-autopairs")
if not status_ok then
	print("autopairs not found!")
	return
end

autopairs.setup({
	disable_filetype = { "TelescopePrompt" },
	disable_in_replace_mode = true,
	enable_bracket_in_quote = false,
})
