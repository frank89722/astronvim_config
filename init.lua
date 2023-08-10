return {
  colorscheme = "monokai-pro",

  plugins = {
    {
      "loctvl842/monokai-pro.nvim",
      lazy = false,
      config = function()
        require("monokai-pro").setup {
          filter = "ristretto"
        }
      end
    },
    {
      "keaising/im-select.nvim",
      event = "VeryLazy",
      config = function()
        require("im_select").setup {
          default_im_select = "com.apple.keylayout.UnicodeHexInput",
        }
      end,
    },
    {
      "nvim-neo-tree/neo-tree.nvim",
      config = function()
        require("neo-tree").setup {
          filesystem = {
            filtered_items = {
              visible = true,
            }
          }
        }
      end,
    },
    {
      "smoka7/multicursors.nvim",
      event = "VeryLazy",
      dependencies = {
        'nvim-treesitter/nvim-treesitter',
        'smoka7/hydra.nvim',
      },
      opts = {},
      cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
      keys = {
        {
          mode = { 'v', 'n' },
          '<A-n>',
          '<cmd>MCstart<cr>',
          desc = 'Create a selection for selected text or word under the cursor',
        },
      },
    },
    {
      "jose-elias-alvarez/null-ls.nvim",
      opts = function(_, opts)
        local null_ls = require "null-ls"
        opts.sources = {
          null_ls.builtins.completion.spell,
          null_ls.builtins.diagnostics.typos,
        }
        return opts
      end,
    },

  },

  mappings = {
    n = {
      ["<C-S-j>"] = { ":m .+1<cr>==", desc = "n move line down" },
      ["<C-S-k>"] = { ":m .-2<cr>==", desc = "n move line up" },
      ["<S-l>"] = {
        function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
        desc = "Next buffer"
      },
      ["<S-h>"] = {
        function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
        desc = "Previous buffer",
      },
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
  }

}
