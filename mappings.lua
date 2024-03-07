---MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },

    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },
  },

  v = {
    [">"] = { ">gv", "indent" },
  },

  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
  },
}

M.disabled = {
  n = {
    ["<C-n>"] = "",
  },
}

M.nvimtree = {
  n = {
    ["<C-b>"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
  },
}

return M
