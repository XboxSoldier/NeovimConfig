vim.opt.tabstop = 8
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.clipboard = "unnamedplus"

vim.opt.incsearch = true
vim.opt.cursorline = true

vim.opt.guifont = "MonoLisa Commilitia,CommilitiaFont UI SC:h14"
vim.opt.linespace = 8
vim.opt.termguicolors = true

vim.opt.ignorecase = true
vim.wo.number = true

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.g.nvim_tree_respect_buf_cwd = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  "williamboman/mason.nvim",
  "linrongbin16/lsp-progress.nvim",
  "stevearc/conform.nvim",
  {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      if vim.g.neovide then
        require("telescope").setup({
          defaults = {
            winblend = 100,
          },
        })
      end
    end,
  },
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      ensure_installed = {
        "lua_ls",
        "clangd",
        "taplo",
        "pyright",
        "zk",
        "jsonls",
        "html",
        "eslint",
        "mesonlsp",
        "rust-analyzer",
      }
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "neovim/nvim-lspconfig",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "L3MON4D3/LuaSnip",
      "saadparwaiz1/cmp_luasnip",
      "rafamadriz/friendly-snippets",
    },
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },
  },
  {
    "akinsho/flutter-tools.nvim",
    lazy = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim", -- optional for vim.ui.select
    },
    config = true,
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup()
    end,
  },
  {
    "folke/tokyonight.nvim",
    style = "day",
    terminal_colors = true,
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
  },
  "liuchengxu/vista.vim",
  "j-hui/fidget.nvim",
  "github/copilot.vim",
  "machakann/vim-highlightedyank",
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {},
    config = function()
      require("ibl").setup()
    end,
  },
  {
    'windwp/nvim-autopairs',
    config = function()
      require('nvim-autopairs').setup()
    end
  },
  'mg979/vim-visual-multi',
})

require("core.keymaps")

require("plugins.tree")
require("plugins.lsp")
require("plugins.cmp")
require("plugins.statusline")
require("plugins.copilot")
require("plugins.visual-multi")

vim.cmd([[colorscheme tokyonight-day]])

if vim.g.neovide then
  vim.g.neovide_transparency = 1
  vim.g.transparency = 0.8
  vim.g.neovide_floating_blur = 0.8
  vim.g.neovide_window_blurred = true
end
