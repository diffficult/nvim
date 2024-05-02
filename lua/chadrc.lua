---@type ChadrcConfig
local M = {}

M.ui = {
	theme = "chadracula-evondev",
	theme_toggle = { "chadracula-evondev", "tokyonight" },
	lsp_semantic_tokens = false,
--	statusline = core.statusline,
--	tabufline = core.tabufline,
    -- statusline = {
    --   theme = "vscode_colored", -- default/vscode/vscode_colored/minimal
    -- -- default/round/block/arrow separators work only for default statusline theme
    -- -- round and block will work for minimal theme only
    --   separator_style = "round",
    --   overriden_modules = nil,
    -- },
	cmp = {
	  icons = true,
	  lspkind_text = true,
	  style = "default", -- default/flat_light/flat_dark/atom/atom_colored
	  border_color = "grey_fg", -- only applicable for "default" style, use color names from base30 variables
	  selected_item_bg = "colored", -- colored / simple
	},

	lsp = {
	  signature = false,
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
		{ "  Find File", "Spc f f", "Telescope find_files" },
		{ "󰈚  Recent Files", "Spc f o", "Telescope oldfiles" },
		{ "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
		{ "  Bookmarks", "Spc m a", "Telescope marks" },
		{ "  Themes", "Spc t h", "Telescope themes" },
		{ "  Mappings", "Spc c h", "NvCheatsheet" },
	  },
	},

	-- hl_override = {
	-- 	Comment = { italic = true },
	-- 	["@comment"] = { italic = true },
	-- },
}

return M
