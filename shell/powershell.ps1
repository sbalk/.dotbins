# dotbins - Add platform-specific binaries to PATH
$os = "windows"

$arch = (Get-CimInstance -Class Win32_Processor).AddressWidth -eq 64 ? "amd64" : "386"

$env:PATH = "$HOME/.dotbins\$os\$arch\bin" + [System.IO.Path]::PathSeparator + $env:PATH

# Tool-specific configurations
# Configuration for bat
if (Get-Command bat -ErrorAction SilentlyContinue) {
    alias bat="bat --paging=never"
    alias cat="bat --plain --paging=never"
}

# Configuration for direnv
if (Get-Command direnv -ErrorAction SilentlyContinue) {
    eval "$(direnv hook zsh)"
}

# Configuration for fzf
if (Get-Command fzf -ErrorAction SilentlyContinue) {
    source <(fzf --zsh)
}

# Configuration for lazygit
if (Get-Command lazygit -ErrorAction SilentlyContinue) {
    alias lg="lazygit"
}

# Configuration for zoxide
if (Get-Command zoxide -ErrorAction SilentlyContinue) {
    eval "$(zoxide init zsh)"
}

# Configuration for atuin
if (Get-Command atuin -ErrorAction SilentlyContinue) {
    source <(atuin init zsh --disable-up-arrow)
}

# Configuration for eza
if (Get-Command eza -ErrorAction SilentlyContinue) {
    alias l="eza -lah --git"
}

# Configuration for micromamba
if (Get-Command micromamba -ErrorAction SilentlyContinue) {
    alias mm="micromamba"
}

# Configuration for uv
if (Get-Command uv -ErrorAction SilentlyContinue) {
    eval "$(uv generate-shell-completion zsh)"
}

# Configuration for starship
if (Get-Command starship -ErrorAction SilentlyContinue) {
    eval "$(starship init zsh)"
}

