vim.g.copilot_no_tab_map = true

vim.cmd [[
  imap <silent><script><expr> <C-e> copilot#Accept("\<CR>")
  let g:copilot_no_tab_map = v:true
]]

vim.keymap.set('i', '<C-d>', '<Plug>(copilot-next)')
vim.keymap.set('i', '<C-a>', '<Plug>(copilot-previous)')
