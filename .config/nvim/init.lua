-- general config
vim.cmd([[hi @lsp.type.number gui=italic]])
vim.o.swapfile = false
vim.o.winborder = "rounded"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.showtabline = 2
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.cursorcolumn = false
vim.o.ignorecase = true
vim.o.smartindent = true
vim.o.termguicolors = true
vim.o.undofile = true
vim.o.number = true
vim.o.relativenumber = true

-- window management
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>sv", "<C-w>v")        -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s")        -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w> =")       -- make split windows equal width & height
vim.keymap.set("n", "<leader>wj", "<C-w> =")       -- make split windows equal width & height
vim.keymap.set("n", "<leader>k", "<Cmd>close<CR>") -- close current split window

-- tab managment
vim.keymap.set("n", "<leader>no", "<Cmd>:tabn<CR>")        -- change tab
vim.keymap.set("n", "<leader>ni", "<Cmd>:tabprevious<CR>") -- change tab
vim.keymap.set("n", "<leader>nw", "<Cmd>:tabnew<CR>")      -- new tab
vim.keymap.set("n", "<leader>xc", "<Cmd>:tabclose<CR>")    -- kill current tab

-- file managment
vim.keymap.set({ "n" }, "<M-n>", ":resize +2<CR>")
vim.keymap.set({ "n" }, "<M-e>", ":resize -2<CR>")
vim.keymap.set({ "n" }, "<M-i>", ":vertical resize +5<CR>")
vim.keymap.set({ "n" }, "<M-m>", ":vertical resize -5<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>") -- write current buffer
vim.keymap.set("n", "<leader>q", ":q<CR>") -- quit current buffer

-- lsp
vim.keymap.set("n", "<leader>lf", vim.lsp.buf.format)        -- write current buffer
vim.keymap.set("n", "<leader>le", vim.diagnostic.open_float) -- write current buffer
vim.o.signcolumn = "yes"

-- yonk
vim.keymap.set({ "n", "v", "x" }, "<leader>y", '"+y<CR>')
vim.keymap.set({ "n", "v", "x" }, "<leader>d", '"+d<CR>')

-- for appearence
vim.o.termguicolors = true

-- TODO: Make a file for gruberDarker colorscheme
function gruberDarker()
	local colors = {
		gruberDarkerFg = "#e4e4ef",
		gruberDarkerFg1 = "#f4f4ff",
		gruberDarkerFg2 = "#f5f5f5",
		gruberDarkerWhite = "#ffffff",
		gruberDarkerBlack = "#000000",
		gruberDarkerBgBlack1 = "#101010",
		gruberDarkerBg = "#181818",
		gruberDarkerBg1 = "#282828",
		gruberDarkerBg2 = "#453d41",
		gruberDarkerBg3 = "#484848",
		gruberDarkerBg4 = "#52494e",
		gruberDarkerRed1 = "#c73c3f",
		gruberDarkerRed = "#f43841",
		gruberDarkerRedPlus1 = "#ff4f58",
		gruberDarkerGreen = "#73c936",
		gruberDarkerYellow = "#ffdd33",
		gruberDarkerBrown = "#cc8c3c",
		gruberDarkerQuartz = "#95a99f",
		gruberDarkerNiagara2 = "#303540",
		gruberDarkerNiagara1 = "#565f73",
		gruberDarkerNiagara = "#96a6c8",
		gruberDarkerWisteria = "#9e95c7",

	}

	colors.fg = colors.gruberDarkerFg
	colors.fg_1 = colors.gruberDarkerFg1
	colors.fg_2 = colors.gruberDarkerFg2

	colors.bg = colors.gruberDarkerBg
	colors.bg_1 = colors.gruberDarkerBg1
	colors.bg_2 = colors.gruberDarkerBg2

	colors.cursor = colors.gruberDarkerYellow
	colors.yellow = colors.gruberDarkerYellow
	colors.comment = colors.gruberDarkerBrown

	local hlgroups = {
		Comment      = { fg = colors.comment, bg = colors.bg, bold = true },

		Normal       = { fg = colors.fg, bg = colors.bg },

		Character    = { fg = colors.yellow },
		Constant     = { fg = colors.yellow },
		Number       = {},
		Boolean      = { fg = colors.yellow },
		Float        = {},
		Conditional  = {},
		Statement    = { fg = colors.yellow },
		Repeat       = {},
		Label        = {},
		Keyword      = {},
		Exception    = {},
		Include      = { fg = colors.gruberDarkerQuartz },
		Prefoc       = {},
		Define       = { fg = colors.yellow },
		Macro        = {},
		PreCondit    = {},
		StorageClass = {},
		Type         = { fg = colors.gruberDarkerQuartz },
		Struct       = { fg = colors.yellow },
		Typedef      = { fg = colors.yellow },
		Tag          = {},

		Cursor       = { fg = colors.bg, bg = colors.cursor },
		MsgArea      = { fg = colors.fg, bg = colors.bg },
		StatusLine   = { fg = colors.fg_1, bg = colors.bg_1 },
		Directory    = { fg = colors.gruberDarkerNiagara, bg = colors.bg },
		ErrorMsg     = { fg = colors.gruberDarkerRedPlus1, bg = colors.bg_1 },
		MoreMsg      = { fg = colors.yellow, bg = colors.bg_1 },
		Search       = { fg = colors.gruberDarkerWhite, bg = colors.gruberDarkerQuartz },
	}

	if vim.g.color_name ~= "test" then
		vim.cmd("hi clear")
	end

	vim.g.color_name = "gruberdarker"
	vim.o.termguicolors = true

	for group, colors in pairs(hlgroups) do
		if not vim.tbl_isempty(colors) then
			if colors.link then
				vim.cmd("hi! link" .. group .. " " .. colors.link)
			else
				local fg = colors.fg and "guifg=" .. colors.fg .. " " or ""
				local bg = colors.bg and "guibg=" .. colors.bg .. " " or ""
				local style = colors.style and "gui=" .. colors.style .. " " or ""
				local guisp = colors.guis and "guisp=" .. colors.style .. " " or ""
				vim.cmd("hi " .. group .. " " .. fg .. bg .. style .. guisp)
			end
		end
	end
end

gruberDarker()

-- packages
vim.pack.add({
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter",            version = "main" },
	{ src = "https://github.com/aznhe21/actions-preview.nvim" },
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects" },
	{ src = "https://github.com/nvim-telescope/telescope.nvim",              version = "0.1.8" },
	{ src = "https://github.com/nvim-telescope/telescope-ui-select.nvim" },
	{ src = "https://github.com/nvim-lua/plenary.nvim" },
	{ src = "https://github.com/L3MON4D3/LuaSnip" },
})

-- lsp
require "mason".setup()

vim.api.nvim_create_autocmd('LspAttach', {
	group = vim.api.nvim_create_augroup('my.lsp', {}),
	callback = function(args)
		local client = assert(vim.lsp.get_client_by_id(args.data.client_id))
		if client:supports_method('textDocument/completion') then
			-- Optional: trigger autocompletion on EVERY keypress. May be slow!
			local chars = {}; for i = 32, 126 do table.insert(chars, string.char(i)) end
			-- TODO: Work in LuaSnip
			client.server_capabilities.completionProvider.triggerCharacters = chars
			vim.lsp.completion.enable(true, client.id, args.buf, { autotrigger = true })
		end
	end,
})

vim.api.nvim_create_autocmd("BufWinEnter", {
	pattern = "*.jsx,*.tsx",
	group = vim.api.nvim_create_augroup("TS", { clear = true }),
	callback = function()
		vim.cmd([[set filetype=typescriptreact]])
	end
})

vim.cmd [[set completeopt+=menuone,noselect,popup]]
vim.lsp.config('luals', {
	cmd = { 'lua-language-server' },
	filetypes = { 'lua' },
	root_markers = { '.luarc.json', '.luarc.jsonc' },
})

vim.lsp.config('pyright', {
	cmd = { 'pyright-langserver', '--stdio' },
	filetypes = { 'python' },
	root_markers = { 'pyproject.toml' },
})

vim.lsp.config('biome', {
	filetypes = { 'typescript', 'typescriptreact', 'css', 'html', 'javascript', 'javascriptreact', },
	root_dir = function(bufnr, on_dir)
		---@type vim.lsp.Config
		local root_markers = {
			'package-lock.json',
			'.git',
		}
		local root_project = vim.fs.root(bufnr, root_markers) or vim.fn.get_cwd()
		local biome_config_files = { 'biome.json', 'biome.jsonc' }
		biome_config_files = require 'lspconfig.util'.insert_package_json(biome_config_files, 'biomejs', filename)
		local filename = vim.api.nvim_buf_get_name(bufnr)
		local is_buffer_using_biome = vim.fs.find(biome_config_files, {
			path = filename,
			type = 'file',
			limit = 1,
			upward = true,
			stop = vim.fs.dirname(root_project),
		})[1]
		if not is_buffer_using_biome then
			return
		end
		on_dir(root_project)
	end
})

vim.lsp.enable({ "luals", "dartls", "ts_ls", "tailwindcss", "pyright", "biome" })

require "oil".setup({
	columns = {
		"icon",
		-- "permissions",
		"size",
		-- "mtime",
	},
	keymaps = {
		["g?"] = { "actions.show_help", mode = "n" },
		["<CR>"] = "actions.select",
		["<C-s>"] = { "actions.select", opts = { vertical = true } },
		["<C-h>"] = { "actions.select", opts = { horizontal = true } },
		["<C-t>"] = { "actions.select", opts = { tab = true } },
		["<C-p>"] = "actions.preview",
		["<C-c>"] = { "actions.close", mode = "n" },
		["<C-l>"] = "actions.refresh",
		["-"] = { "actions.parent", mode = "n" },
		["_"] = { "actions.open_cwd", mode = "n" },
		["`"] = { "actions.cd", mode = "n" },
		["g~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
		["gs"] = { "actions.change_sort", mode = "n" },
		["gx"] = "actions.open_external",
		["g."] = { "actions.toggle_hidden", mode = "n" },
		["g\\"] = { "actions.toggle_trash", mode = "n" },
	},
	-- Configuration for the floating window in oil.open_float
	float = {
		-- Padding around the floating window
		padding = 2,
		-- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
		max_width = 0,
		max_height = 0,
		border = nil,
		win_options = {
			winblend = 0,
		},
		-- optionally override the oil buffers window title with custom function: fun(winid: integer): string
		get_win_title = nil,
		-- preview_split: Split direction: "auto", "left", "right", "above", "below".
		preview_split = "auto",
		-- This is the config that will be passed to nvim_open_win.
		-- Change values here to customize the layout
		override = function(conf)
			return conf
		end,
	},
})
vim.keymap.set("n", "<leader>e", ":Oil <CR>")

local telescope = require("telescope")
telescope.setup({
	defaults = {
		preview = { treesitter = true },
		color_devicons = true,
		sorting_strategy = "ascending",
		borderchars = {
			"-", -- top
			"", -- right
			"", -- bottom
			"", -- left
			"", -- top-left
			"", -- top-right
			"", -- bottom-right
			"", -- bottom-left
		},
		path_displays = { "smart" },
		layout_config = {
			height = 50,
			width = 120,
			prompt_position = "top",
			preview_cutoff = 40,
		}
	}
})
telescope.load_extension("ui-select")

require("actions-preview").setup {
	backend = { "telescope" },
	extensions = { "env" },
	telescope = vim.tbl_extend(
		"force",
		require("telescope.themes").get_dropdown(), {}
	)
}
require("luasnip").setup({
	enable_autosnippets = true,
	update_events = "TextChanged,TextChangedI",
	store_selection_keys = "<Tab>",
})

local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
ls.add_snippets("all", {
	s("date", t "text"),
})

ls.add_snippets("lua", {
	s("trigger", { t("Wow! Text!") }),
})

ls.add_snippets("dart", {
	s("trigger", { t("Wow! Text!") }),
})

vim.keymap.set({ "n" }, "<C-e>", function() ls.expand_or_jump(1) end, { silent = true })
vim.keymap.set({ "n" }, "<C-J>", function() ls.jump(1) end, { silent = true })
