-- map leader

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- plugins
require("lazy").setup("plugins")

-- theme
vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- binds
vim.api.nvim_set_keymap('n', '<leader>ex', ':Ex<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- tab shenanigans
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- numbers
vim.opt.number = true
vim.opt.relativenumber = true
vim.cmd "autocmd User TelescopePreviewerLoaded setlocal number"

-- telescope configuration
local builtin = require('telescope.builtin')

-- vim.keymap.set('n', '<leader>ff', "<cmd>Telescope find_files hidden=true<cr>", {})
vim.keymap.set('n', '<leader>ff', "<cmd>lua require('telescope.builtin').find_files({ hidden = true, find_command = {'rg', '--files', '--hidden', '-g', '!.git'} })<cr>", {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- lualine configuration
require('lualine').setup { options = { theme = 'auto' } }
