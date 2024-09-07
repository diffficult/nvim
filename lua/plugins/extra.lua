local plugins = {

    { "elkowar/yuck.vim" , lazy = false },  -- load a plugin at startup

    { "mistricky/codesnap.nvim", build = "make" },

    -- You can use any plugin specification from lazy.nvim
    {
      "Pocco81/TrueZen.nvim",
      cmd = { "TZAtaraxis", "TZMinimalist" },
      config = function()
        require "custom.configs.truezen" -- just an example path
      end,
    },

    -- this opts will extend the default opts
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {"html", "css", "bash"},
      },
    },

    -- {
    --   "folke/which-key.nvim",
    --   enabled = false,
    -- },

    -- If your opts uses a function call ex: require*, then make opts spec a function
    -- should return the modified default config as well
    -- here we just call the default telescope config
    -- And edit its mappinsg
    {
      "nvim-telescope/telescope.nvim",
      opts = function()
        local conf = require "nvchad.configs.telescope"

        conf.defaults.mappings.i = {
          ["<C-j>"] = require("telescope.actions").move_selection_next,
          ["<Esc>"] = require("telescope.actions").close,
        }

       -- or
       -- table.insert(conf.defaults.mappings.i, your table)

        return conf
      end,
    }
  }

  return plugins
