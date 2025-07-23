-- [Keybinds]
vim.keymap.set("n", "<leader>fe", vim.cmd.Ex)

-- Tabs
vim.keymap.set("n", "<leader>tn", vim.cmd.tabnew)
vim.keymap.set("n", "<leader>td", vim.cmd.tabclose)
vim.keymap.set("n", "<leader>tl", vim.cmd.tabnext)
vim.keymap.set("n", "<leader>th", vim.cmd.tabpre)

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set("n", "<leader>fs", builtin.find_files)

-- [Style]
vim.cmd.colorscheme "catppuccin-mocha"
vim.wo.number = true
vim.wo.relativenumber = true

-- [Lspconfig]

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using
        -- (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {
          'vim',
          'require'
        },
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}

vim.lsp.enable('lua_ls')
vim.lsp.enable('clangd')
vim.lsp.enable('cmake')
vim.lsp.enable('pyright')
vim.lsp.enable('ast_grep')
vim.lsp.enable('tsserver')
require'lspconfig'.tsserver.setup {}

-- [Noice]
require("noice").setup({
  lsp = {
    -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
    override = {
      ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
      ["vim.lsp.util.stylize_markdown"] = true,
      ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
    },
  },
  -- you can enable a preset for easier configuration
  presets = {
    bottom_search = true, -- use a classic bottom cmdline for search
    command_palette = true, -- position the cmdline and popupmenu together
    long_message_to_split = true, -- long messages will be sent to a split
    inc_rename = false, -- enables an input dialog for inc-rename.nvim
    lsp_doc_border = false, -- add a border to hover docs and signature help
  },
})

-- [Statusline]
require('lualine').setup()
