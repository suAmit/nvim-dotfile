return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- TODO: JS
    -- FIX: JS
    -- HACK: JS
    -- NOTE: JS
    -- PERF: JS
    -- WARNING: JS
    -- set keymaps

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>rn", function()
      todo_comments.jump_next()
    end, { desc = "Next todo comment" })

    keymap.set("n", "<leader>rp", function()
      todo_comments.jump_prev()
    end, { desc = "Previous todo comment" })

    keymap.set("n", "<leader>rl", "<cmd>TodoLocList<CR>", { desc = "Todos List" })

    keymap.set("n", "<leader>rt", "<cmd>TodoTelescope<CR>", { desc = "Todos telescope" })

    todo_comments.setup()
  end,
}
