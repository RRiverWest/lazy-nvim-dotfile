return {
  {
    "hrsh7th/nvim-cmp",
    lazy = false,
  },
  {
    "hrsh7th/cmp-nvim-lsp",
    lazy = false,
    config = function()
      require("cmp").setup({
        sources = {
          { name = "nvim_lsp" },
        },
      })
    end,
  },
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  -- {
  --   "williamboman/mason-lspconfig.nvim",
  --   config = function()
  --     require("mason-lspconfig").setup_handlers {
  --       function(server_name)
  --         require("lspconfig")[server_name].setup {}
  --       end,
  --     }
  --   end,
  -- },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
  },
}
