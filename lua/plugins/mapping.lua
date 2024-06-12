return {
  {
    "AstroNvim/astrocore",
    ---@type AstroCoreOpts
    opts = {
      mappings = {

        n = {
          ["<C-S-j>"] = { ":m .+1<cr>==", desc = "n move line down" },
          ["<C-S-k>"] = { ":m .-2<cr>==", desc = "n move line up" },
          ["<D-w>"] = { "<Nop>", silent=true },
        },
        i = {
          ["<C-S-j>"] = { "<esc>:m .+1<cr>==gi", desc = "i move line down" },
          ["<C-S-k>"] = { "<esc>:m .-2<cr>==gi", desc = "i move line up" },
        },
        v = {
          ["<C-S-j>"] = { ":m '>+1<cr>gv=gv", desc = "v move line down" },
          ["<C-S-k>"] = { ":m '<-2<cr>gv=gv", desc = "v move line up" },
        },
      },

      options = {
        opt = {
          guicursor = "n-v-c-i:block",
        },
      },
    },
  },
}
