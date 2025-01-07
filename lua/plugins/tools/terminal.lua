return {
  "akinsho/toggleterm.nvim",
  keys = {
    { "<A-i>" },
    {
      "<leader>lg",
      function()
        gh_dash:toggle()
      end,
      desc = "ToggleTerm: Toggle github dashboard",
    },
    {
      "<leader>lh",
      "<cmd>:ToggleTerm size=math.floor(vim.o.lines * 0.3) dir=~/Desktop direction=horizontal name=desktop<CR>",
      desc = "ToggleTerm horizontal split",
    },
    {
      "<leader>lv",
      "<cmd>:ToggleTerm size=math.floor(vim.o.columns * 0.4) dir=~/Desktop direction=vertical name=desktop<CR>",
      desc = "ToggleTerm vertical split",
    },
    { "<leader>lb", "<cmd>:ToggleTerm dir=~/Desktop direction=tab name=desktop<CR>", desc = "ToggleTerm new tab" },
    { "<leader>lf", "<cmd>:ToggleTerm dir=~/Desktop direction=float name=desktop<CR>", desc = "ToggleTerm Float" },
  },
  config = function()
    local Terminal = require("toggleterm.terminal").Terminal

    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return math.floor(vim.o.lines * 0.3)
        elseif term.direction == "vertical" then
          return math.floor(vim.o.columns * 0.4)
        end
      end,
      open_mapping = [[<A-i>]],
      direction = "float",
      float_opts = {
        border = "curved",
        -- row = 4,
        -- col = 4,
        width = math.floor(vim.o.lines * 1.5),
        height = math.floor(vim.o.columns * 0.3),
        title_pos = "center",
      },
    })

    local gh_dash = Terminal:new({
      cmd = "gh dash",
      hidden = true,
      direction = "float",
      on_open = float_handler,
      float_opts = {
        height = function()
          return math.floor(vim.o.lines * 0.8)
        end,
        width = function()
          return math.floor(vim.o.columns * 0.95)
        end,
      },
    })
  end,
}
