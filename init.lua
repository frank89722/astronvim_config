return {
  colorscheme = "monokai_ristretto",

  plugins = {
    {
      "keaising/im-select.nvim",
      lazy = false,
      config = function()
        require("im_select").setup {
          default_im_select    = "com.apple.keylayout.UnicodeHexInput",
          disable_auto_restore = 1,
        }
      end,
    },
    { "chaoren/vim-wordmotion" },
    { "kamykn/spelunker.vim" },
    { "tanvirtin/monokai.nvim" },
  },

  mappings = {
    n = {
      ["<c-j>"] = { ":m .+1<cr>==", desc = "n move line down" },
      ["<c-k>"] = { ":m .-2<cr>==", desc = "n move line up" },
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

}
