return {
  colorscheme = "monokai_ristretto",

  plugins = {
    {
      "keaising/im-select.nvim",
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

}
