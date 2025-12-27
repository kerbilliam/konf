-- ### key config ###
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>cd", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ss", function()
	vim.opt_local.spell = true
	vim.opt_local.spelllang = "en_us"
end, { desc = "Enable spellcheck (en_us)" })

-- Move between split windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })

-- :noh when Esc pressed in Normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- disable automatic comment insertion
vim.opt_local.formatoptions:remove({ 'r', 'o' })

-- ##################

-- ### options ###
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.undofile = true
vim.opt.scrolloff = 10

vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.confirm = true

-- ###############

-- ### Title ###
vim.o.title = true
vim.o.titlestring = "nvim - %F"
-- #############

vim.api.nvim_create_autocmd('TextYankPost', {
	desc = 'Highlight when yanking text',
	group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
