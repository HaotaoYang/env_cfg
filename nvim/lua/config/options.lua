-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

-- 行号
opt.relativenumber = true
opt.number = true

-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- 防止包裹
opt.wrap = false

-- 启用鼠标
opt.mouse:append("a")

-- 系统剪贴板
opt.clipboard = "unnamedplus"

-- 默认新窗口右边和下边
opt.splitright = true
opt.splitbelow = true

-- 搜索
opt.ignorecase = true
opt.smartcase = true

-- 外观
opt.termguicolors = true
opt.signcolumn = "yes"

-- 关闭自动格式化代码
vim.g.autoformat = false

vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.bo.expandtab = true
        vim.bo.tabstop = 4
        vim.bo.shiftwidth = 4
        vim.bo.softtabstop = 4
    end
})

vim.cmd [[ autocmd FileType * setlocal expandtab ]]
