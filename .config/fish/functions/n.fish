function n --wraps=nvim --wraps='env TERM=wezterm nvim' --description 'alias n env TERM=wezterm nvim'
  env TERM=wezterm nvim $argv
        
end
