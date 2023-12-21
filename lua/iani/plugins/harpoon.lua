return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    keymap.set("n", "<leader>a", function()
      harpoon:list():append()
    end, { desc = "mark file harpoon" })
    keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    keymap.set("n", "<C-i>", function()
      harpoon:list():select(1)
    end)
    keymap.set("n", "<C-t>", function()
      harpoon:list():select(2)
    end)
    keymap.set("n", "<C-n>", function()
      harpoon:list():select(3)
    end)
    keymap.set("n", "<C-s>", function()
      harpoon:list():select(4)
    end)
  end,
}
