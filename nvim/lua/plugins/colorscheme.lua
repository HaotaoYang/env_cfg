return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false, -- 立即加载
    priority = 1000, -- 确保优先加载主题
    config = function()
      vim.cmd("colorscheme terafox") -- 设置默认主题
    end,
  },
}
