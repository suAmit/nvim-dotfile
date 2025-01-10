return {
  "folke/which-key.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  init = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
  end,
  config = function()
    local wk = require("which-key")
    wk.add({
      mode = { "n", "v" },
      { "<leader>s", group = "+Split/Search" },
      { "<leader>t", group = "+Tab" },
      { "<leader>g", group = "+Git" },
      { "<leader>f", group = "+File" },
      { "<leader>l", group = "+Terminal" },
      { "<leader>w", group = "+Session" },
      { "<leader>r", group = "+Todos" },
      { "<leader>x", group = "+Trouble" },
      { "<leader>m", group = "+Linting/Formatting" },
      { "<leader>a", group = "+Lsp" },
    })
  end,
}
