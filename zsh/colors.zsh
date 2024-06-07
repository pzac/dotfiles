autoload -U colors && colors

# Show all 256 colors with color number
function spectrum_ls() {
  for code in {000..255}; do
print -P -- "$code: %F{$code}Test%f"
  done
}

