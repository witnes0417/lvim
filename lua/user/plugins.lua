-- Additional Plugins
lvim.plugins = {
  "stevearc/dressing.nvim",
  "AckslD/swenv.nvim",
  ------- user plugins start ----------
  "ThePrimeagen/git-worktree.nvim",
  -- 'liuchengxu/graphviz.vim',
  -- project management
  "ahmedkhalf/project.nvim",
  "tpope/vim-fugitive",
  "nvim-telescope/telescope-project.nvim",
  -- tmux
  "tpope/vim-obsession",
  -- dap workflow
  "Weissle/persistent-breakpoints.nvim",
  -- lua plugin workflow
  "folke/neodev.nvim",
  "bfredl/nvim-luadev",
  -- mark
  -- 'ChristianChiarulli/bookmark.nvim',
  "kkharji/sqlite.lua",
  -- 'renerocksai/telekasten.nvim',
  'instant-markdown/vim-instant-markdown',
  -- { 'toppair/peek.nvim', build = 'deno task --quiet build:fast' },
  -- ''
  ------ user plugins end ------------
  "lunarvim/onedarker.nvim",
  "LunarVim/synthwave84.nvim",
  "roobert/tailwindcss-colorizer-cmp.nvim",
  "lunarvim/github.nvim",
  "nvim-treesitter/playground",
  "nvim-treesitter/nvim-treesitter-textobjects",
  "mfussenegger/nvim-jdtls",
  "opalmay/vim-smoothie",
  "j-hui/fidget.nvim",
  "christianchiarulli/nvim-ts-autotag",
  "kylechui/nvim-surround",
  "christianchiarulli/harpoon",
  "MattesGroeger/vim-bookmarks",
  "NvChad/nvim-colorizer.lua",
  "ghillb/cybu.nvim",
  "moll/vim-bbye",
  "folke/todo-comments.nvim",
  "windwp/nvim-spectre",
  "f-person/git-blame.nvim",
  "ruifm/gitlinker.nvim",
  "mattn/vim-gist",
  "mattn/webapi-vim",
  "folke/zen-mode.nvim",
  "lvimuser/lsp-inlayhints.nvim",
  "lunarvim/darkplus.nvim",
  "lunarvim/templeos.nvim",
  "kevinhwang91/nvim-bqf",
  "is0n/jaq-nvim",
  -- "hrsh7th/cmp-emoji",
  "ggandor/leap.nvim",
  "nacro90/numb.nvim",
  "TimUntersberger/neogit",
  "sindrets/diffview.nvim",
  "simrat39/rust-tools.nvim",
  "olexsmir/gopher.nvim",
  "leoluz/nvim-dap-go",
  "mfussenegger/nvim-dap-python",
  "jose-elias-alvarez/typescript.nvim",
  "mxsdev/nvim-dap-vscode-js",
  "petertriho/nvim-scrollbar",
  -- "renerocksai/calendar-vim",
  "dccsillag/magma-nvim",
  {
    "saecki/crates.nvim",
    version = "v0.3.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("crates").setup {
        null_ls = {
          enabled = true,
          name = "crates.nvim",
        },
      }
    end,
  },
  "MunifTanjim/nui.nvim",
  -- "jackMort/ChatGPT.nvim",
  -- {
  -- 	"jinh0/eyeliner.nvim",
  -- 	config = function()
  -- 		require("eyeliner").setup({
  -- 			highlight_on_key = true,
  -- 		})
  -- 	end,
  -- },
  { "christianchiarulli/telescope-tabs", branch = "chris" },
  "monaqa/dial.nvim",
  {
    "0x100101/lab.nvim",
    build = "cd js && npm ci",
  },
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
    config = function()
      require("copilot").setup {}
    end,
  },
  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function()
      require("copilot_cmp").setup()
    end,
  },
  {
    "tzachar/cmp-tabnine",
    event = "InsertEnter",
    build = "./install.sh",
  },

  "MunifTanjim/nui.nvim",
  "Bryley/neoai.nvim",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",
  "folke/trouble.nvim",
  -- {
  --   "folke/noice.nvim",
  --   event = "VimEnter",
  --   config = function()
  --     require("noice").setup()
  --   end,
  -- },

  -- https://github.com/jose-elias-alvarez/typescript.nvim
  -- "rmagatti/auto-session",
  -- "rmagatti/session-lens"
  -- "christianchiarulli/nvim-ts-rainbow",
  -- "karb94/neoscroll.nvim",
}
