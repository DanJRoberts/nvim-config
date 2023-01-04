require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
  },
  -- Adds full filename path in lualine
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
