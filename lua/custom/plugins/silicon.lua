return {
  'michaelrommel/nvim-silicon',
  lazy = true,
  cmd = 'Silicon',
  config = function()
    require('silicon').setup {
      -- Configuration here, or leave empty to use defaults
      theme = 'Dracula',
      font = 'Geist Mono Nerd Font=34;Apple Color Emoji=34',
      line_pad = 2,
      output = function()
        return '~/codeshots/' .. os.date '!%Y-%m-%dT%H-%M-%S' .. '_code.png'
      end,
    }
  end,
}
