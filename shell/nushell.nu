# dotbins - Add platform-specific binaries to PATH
let _os = (sys).host.name | str downcase
let _os = if $_os == "darwin" { "macos" } else { $_os }

let _arch = (sys).host.arch
let _arch = if $_arch == "x86_64" { "amd64" } else if $_arch in ["aarch64", "arm64"] { "arm64" } else { $_arch }

$env.PATH = ($env.PATH | prepend $"/Users/basnijholt/.dotbins/$_os/$_arch/bin")
# Tool-specific configurations
# Configuration for atuin
if (which atuin) != null {
    source <(atuin init zsh --disable-up-arrow)
}

# Configuration for bat
if (which bat) != null {
    alias bat="bat --paging=never"
    alias cat="bat --plain --paging=never"
}

# Configuration for direnv
if (which direnv) != null {
    eval "$(direnv hook zsh)"
}

# Configuration for eza
if (which eza) != null {
    alias l="eza -lah --git"
}

# Configuration for fzf
if (which fzf) != null {
    source <(fzf --zsh)
}

# Configuration for lazygit
if (which lazygit) != null {
    alias lg="lazygit"
}

# Configuration for micromamba
if (which micromamba) != null {
    alias mm="micromamba"
}

# Configuration for starship
if (which starship) != null {
    eval "$(starship init zsh)"
}

# Configuration for zoxide
if (which zoxide) != null {
    eval "$(zoxide init zsh)"
}

# Configuration for uv
if (which uv) != null {
    eval "$(uv generate-shell-completion zsh)"
}

