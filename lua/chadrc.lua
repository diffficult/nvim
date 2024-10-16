---@type ChadrcConfig
local options = {

  base46 = {
    theme = "chadracula-evondev",
    theme_toggle = { "chadracula-evondev", "tokyonight" },
    hl_override = {
     	Comment = { italic = true },
    	["@comment"] = { italic = true },
    },

    lsp_semantic_tokens = false,

    statusline = {
      theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
      -- -- default/round/block/arrow separators work only for default statusline theme
      -- -- round and block will work for minimal theme only
      separator_style = "round",
      order = nil,
      modules = nil,
  },

  ui = {
    cmp = {
      icons = true,
      lspkind_text = true,
      style = "default", -- default/flat_light/flat_dark/atom/atom_colored
      border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
      selected_item_bg = "colored", -- colored / simple
    },
    telescope = { style = "bordered" },
    extended_integrations = {
      "dap",
      "hop",
      "rainbowdelimiters",
      "codeactionmenu",
      "todo",
      "trouble",
      "notify",
    },
    nvdash = {
      load_on_startup = true,
      header = {
         [[                                                     ]],
         [[  ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓ ]],
         [[  ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒ ]],
         [[ ▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░ ]],
         [[ ▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██  ]],
         [[ ▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒ ]],
         [[ ░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░ ]],
         [[ ░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░ ]],
         [[    ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░    ]],
         [[          ░    ░  ░    ░ ░        ░   ░         ░    ]],
         [[                                 ░                   ]],
         [[                                                     ]],
      },
      buttons = {
        { "  Find File", "󱁐 f f", "Telescope find_files" },
        { "󰈚  Recent Files", "󱁐 f o", "Telescope oldfiles" },
        { "󰈭  Find Word", "󱁐 f w", "Telescope live_grep" },
        { "  Bookmarks", "󱁐 m a", "Telescope marks" },
        { "  Themes", "󱁐 t h", "Telescope themes" },
        { "  Mappings", "󱁐 c h", "NvCheatsheet" },
      },
    },
  },

  term = {
    winopts = { number = false, relativenumber = false },
    sizes = { sp = 0.3, vsp = 0.2, ["bo sp"] = 0.3, ["bo vsp"] = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },

  lsp = { signature = false },

  cheatsheet = {
    theme = "grid", -- simple/grid
    excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
  },

  mason = { cmd = true, pkgs = {} },

 },
}

local status, chadrc = pcall(require, "chadrc")
return vim.tbl_deep_extend("force", options, status and chadrc or {})
