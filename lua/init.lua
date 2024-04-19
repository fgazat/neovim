vim.g.mapleader = " "
vim.g.maplocalleader = " "


require "user.options"

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

require "user.keybindings"
require "user.cmp"
require "user.lsp"
-- require "user.dap"
require "user.ufo"