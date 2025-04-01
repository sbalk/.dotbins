# dotbins - Add platform-specific binaries to PATH
set -l _os (uname -s | tr '[:upper:]' '[:lower:]')
test "$_os" = "darwin"; and set _os "macos"

set -l _arch (uname -m)
test "$_arch" = "x86_64"; and set _arch "amd64"
test "$_arch" = "aarch64" -o "$_arch" = "arm64"; and set _arch "arm64"

fish_add_path $HOME/.dotbins/$_os/$_arch/bin

# Tool-specific configurations
# Configuration for atuin
if command -v atuin >/dev/null 2>&1
    source <(atuin init zsh --disable-up-arrow)
end

# Configuration for bat
if command -v bat >/dev/null 2>&1
    alias bat="bat --paging=never"
    alias cat="bat --plain --paging=never"
end

# Configuration for direnv
if command -v direnv >/dev/null 2>&1
    eval "$(direnv hook zsh)"
end

# Configuration for eza
if command -v eza >/dev/null 2>&1
    alias l="eza -lah --git"
end

# Configuration for fzf
if command -v fzf >/dev/null 2>&1
    source <(fzf --zsh)
end

# Configuration for lazygit
if command -v lazygit >/dev/null 2>&1
    alias lg="lazygit"
end

# Configuration for micromamba
if command -v micromamba >/dev/null 2>&1
    alias mm="micromamba"
end

# Configuration for starship
if command -v starship >/dev/null 2>&1
    eval "$(starship init zsh)"
end

# Configuration for zoxide
if command -v zoxide >/dev/null 2>&1
    eval "$(zoxide init zsh)"
end

# Configuration for uv
if command -v uv >/dev/null 2>&1
    eval "$(uv generate-shell-completion zsh)"
end

