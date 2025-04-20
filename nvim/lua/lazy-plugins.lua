--  To check the current status of your plugins, run
--    :Lazy
--
--  You can press `?` in this menu for help. Use `:q` to close the window
--
--  To update plugins you can run
--    :Lazy update
--
-- NOTE: Here is where you install your plugins.
require('lazy').setup({
  require 'custom/plugins/vim-sleuth',

  require 'custom/plugins/fugitive',

  require 'custom/plugins/git-signs',

  require 'custom/plugins/precognition',

  require 'custom/plugins/split',

  require 'custom/plugins/which-key',

  require 'custom/plugins/telescope',

  require 'custom/plugins/nvim-surround',

  require 'custom/plugins/lspconfig',

  require 'custom/plugins/conform',

  require 'custom/plugins/lualine',

  require 'custom/plugins/nvim-cmp',

  require 'custom/plugins/colorscheme',

  require 'custom/plugins/nvim-tree',

  require 'custom/plugins/mini',

  require 'custom/plugins/todo-comments',

  require 'custom/plugins/nvim-treesitter',

  require 'custom/plugins/vimtex',

  require 'kickstart/plugins/lint',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})
-- vim: ts=2 sts=2 sw=2 et
