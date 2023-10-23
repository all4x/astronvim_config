return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  { 'codota/tabnine-nvim', build = "./dl_binaries.sh", config = function() 
 require('tabnine').setup({
  disable_auto_comment = true,
  accept_keymap = "<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt", "NvimTree" },
  log_file_path = nil, -- caminho absoluto para o arquivo de log do Tabnine
 })
  end,  },

    {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {},
  event = "User AstroFile",
  cmd = {"TodoQuickFix"},
  keys = {
    {"<leader>T" ,"<cmd>TodoTelescope<cr>", desc="Open TODOs in Telescope"},
    {"<leader>Q" ,"<cmd>TodoQuickFix<cr>", desc="Open Fixs in Telescope"},
  },
}
}
