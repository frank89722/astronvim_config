return {
  colorscheme = "monokai_ristretto",

  plugins = {
    {
      "keaising/im-select.nvim",
      event = "VeryLazy",
      config = function()
        require("im_select").setup {
          default_im_select    = "com.apple.keylayout.UnicodeHexInput",
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
    { "chaoren/vim-wordmotion" },
    { "kamykn/spelunker.vim" },
    { "tanvirtin/monokai.nvim" },
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

  },

  mappings = {
    n = {
      ["<c-j>"] = { ":m .+1<cr>==", desc = "n move line down" },
      ["<c-k>"] = { ":m .-2<cr>==", desc = "n move line up" },
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
      ["<c-j>"] = { "<esc>:m .+1<cr>==gi", desc = "i move line down" },
      ["<c-k>"] = { "<esc>:m .-2<cr>==gi", desc = "i move line up" },
    },
    v = {
      ["<c-j>"] = { ":m '>+1<cr>gv=gv", desc = "v move line down" },
      ["<c-k>"] = { ":m '<-2<cr>gv=gv", desc = "v move line up" },
    },
  },

  options = {
    opt = {
      guicursor = "n-v-c-i:block",
    },
  }

}
