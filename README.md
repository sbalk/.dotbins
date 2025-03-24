# 🛠️ dotbins Tool Collection

[![dotbins](https://img.shields.io/badge/powered%20by-dotbins-blue.svg?style=flat-square)](https://github.com/basnijholt/dotbins) [![Version](https://img.shields.io/badge/version-0.22.0.post7+g56d7184.d20250321-green.svg?style=flat-square)](https://github.com/basnijholt/dotbins/releases)

This directory contains command-line tools automatically managed by [dotbins](https://github.com/basnijholt/dotbins).

## 📋 Table of Contents

- [What is dotbins?](#-what-is-dotbins)
- [Installed Tools](#-installed-tools)
- [Tool Statistics](#-tool-statistics)
- [Shell Integration](#-shell-integration)
- [Installing and Updating Tools](#-installing-and-updating-tools)
- [Quick Commands](#-quick-commands)
- [Configuration File](#-configuration-file)
- [Additional Information](#ℹ️-additional-information)

## 📦 What is dotbins?

**dotbins** is a utility for managing CLI tool binaries in your dotfiles repository. It downloads and organizes binaries for popular command-line tools across multiple platforms (macOS, Linux) and architectures (amd64, arm64).

**Key features:**

- ✅ **Cross-platform support** - Manages tools for different OSes and CPU architectures
- ✅ **No admin privileges** - Perfect for systems where you lack sudo access
- ✅ **Version tracking** - Keeps track of installed tools with update timestamps
- ✅ **GitHub integration** - Automatically downloads from GitHub releases
- ✅ **Simple configuration** - YAML-based config with auto-detection capabilities

Learn more: [github.com/basnijholt/dotbins](https://github.com/basnijholt/dotbins)

## 🔍 Installed Tools

| Tool | Repository | Version | Updated | Platforms & Architectures |
| :--- | :--------- | :------ | :------ | :------------------------ |
| [atuin](https://github.com/atuinsh/atuin) | atuinsh/atuin | 18.4.0 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [bat](https://github.com/sharkdp/bat) | sharkdp/bat | 0.25.0 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [delta](https://github.com/dandavison/delta) | dandavison/delta | 0.18.2 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [direnv](https://github.com/direnv/direnv) | direnv/direnv | 2.35.0 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [duf](https://github.com/muesli/duf) | muesli/duf | 0.8.1 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [eza](https://github.com/eza-community/eza) | eza-community/eza | 0.20.24 | Mar 22, 2025 | linux (amd64, arm64) |
| [fd](https://github.com/sharkdp/fd) | sharkdp/fd | 10.2.0 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [fzf](https://github.com/junegunn/fzf) | junegunn/fzf | 0.60.3 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [git-lfs](https://github.com/git-lfs/git-lfs) | git-lfs/git-lfs | 3.6.1 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [lazygit](https://github.com/jesseduffield/lazygit) | jesseduffield/lazygit | 0.48.0 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [micromamba](https://github.com/mamba-org/micromamba-releases) | mamba-org/micromamba-releases | 2.0.8-0 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | BurntSushi/ripgrep | 14.1.1 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [starship](https://github.com/starship/starship) | starship/starship | 1.22.1 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [uv](https://github.com/astral-sh/uv) | astral-sh/uv | 0.6.9 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [yazi](https://github.com/sxyazi/yazi) | sxyazi/yazi | 25.3.2 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | ajeetdsouza/zoxide | 0.9.7 | Mar 22, 2025 | linux (amd64, arm64) • macos (arm64) |

## 📊 Tool Statistics

<div align='center'><h3>📦 47 Tools | 💾 497.07 MB Total Size</h3></div>

| Tool | Total Size | Avg Size per Architecture |
| :--- | :-------- | :------------------------ |
| uv | 102.3 MB | 34.1 MB |
| atuin | 93.02 MB | 31.01 MB |
| lazygit | 54.16 MB | 18.05 MB |
| micromamba | 46.24 MB | 15.41 MB |
| yazi | 37.87 MB | 12.62 MB |
| git-lfs | 34.49 MB | 11.5 MB |
| starship | 24.1 MB | 8.03 MB |
| direnv | 20.0 MB | 6.67 MB |
| delta | 18.49 MB | 6.16 MB |
| bat | 16.3 MB | 5.43 MB |
| ripgrep | 15.46 MB | 5.15 MB |
| fzf | 11.29 MB | 3.76 MB |
| fd | 9.65 MB | 3.22 MB |
| duf | 6.55 MB | 2.18 MB |
| eza | 4.01 MB | 2.0 MB |
| zoxide | 3.16 MB | 1.05 MB |

## 💻 Shell Integration

Add one of the following snippets to your shell configuration file to use the platform-specific binaries:

For **Bash**:
```bash
source $HOME/.dotbins/shell/bash.sh
```

For **Zsh**:
```bash
source $HOME/.dotbins/shell/zsh.sh
```

For **Fish**:
```fish
source $HOME/.dotbins/shell/fish.fish
```

For **Nushell**:
```nu
source $HOME/.dotbins/shell/nushell.nu
```

## 🔄 Installing and Updating Tools

### Install or update all tools
```bash
dotbins sync
```

### Install or update specific tools only
```bash
dotbins sync tool1 tool2
```

### Install or update for current platform only
```bash
dotbins sync --current
```

### Force reinstall of all tools
```bash
dotbins sync --force
```


## 🚀 Quick Commands

<details>
<summary>All available commands</summary>

```
dotbins list           # List all available tools
dotbins init           # Initialize directory structure
dotbins sync           # Install and update tools to their latest versions
dotbins readme         # Regenerate this README
dotbins status         # Show installed tool versions
dotbins get REPO       # Install tool directly to ~/.local/bin
```

For detailed usage information, run `dotbins --help` or `dotbins <command> --help`
</details>

## 📁 Configuration File

dotbins is configured using a YAML file (`dotbins.yaml`).
This configuration defines which tools to manage, their sources, and platform compatibility.

**Current Configuration:**

```yaml
tools_dir: ~/.dotbins

platforms:
  linux:
    - amd64
    - arm64
  macos:
    - arm64

tools:
  delta: dandavison/delta
  duf: muesli/duf
  fd: sharkdp/fd
  git-lfs: git-lfs/git-lfs
  yazi: sxyazi/yazi

  bat:
    repo: sharkdp/bat
    shell_code: |
      alias bat="bat --paging=never"
      alias cat="bat --plain --paging=never"
  direnv:
    repo: direnv/direnv
    shell_code: |
      eval "$(direnv hook zsh)"
  fzf:
    repo: junegunn/fzf
    shell_code: |
      source <(fzf --zsh)
  lazygit:
    repo: jesseduffield/lazygit
    shell_code: |
      alias lg="lazygit"
  zoxide:
    repo: ajeetdsouza/zoxide
    shell_code: |
      eval "$(zoxide init zsh)"

  ripgrep:
    repo: BurntSushi/ripgrep
    binary_name: rg

  atuin:
    repo: atuinsh/atuin
    arch_map:
      amd64: x86_64
      arm64: aarch64
    asset_patterns:
      linux: atuin-{arch}-unknown-linux-gnu.tar.gz
      macos: atuin-{arch}-apple-darwin.tar.gz
    shell_code: |
      source <(atuin init zsh --disable-up-arrow)

  eza:
    repo: eza-community/eza
    arch_map:
      amd64: x86_64
      arm64: aarch64
    asset_patterns:
      linux: eza_{arch}-unknown-linux-gnu.tar.gz
      macos: null  # No macOS binaries available as of now
    shell_code: |
      alias l="eza -lah --git"

  micromamba:
    repo: mamba-org/micromamba-releases
    extract_binary: false
    binary_path: bin/micromamba
    arch_map:
      amd64: 64
      arm64: aarch64
    asset_patterns:
      linux: micromamba-linux-{arch}
      macos: micromamba-osx-arm64
    shell_code: |
      alias mm="micromamba"

  uv:
    repo: astral-sh/uv
    binary_name: [uv, uvx]
    binary_path: [uv-*/uv, uv-*/uvx]
    shell_code: |
      eval "$(uv generate-shell-completion zsh)"

  starship:
    repo: starship/starship
    shell_code: |
      eval "$(starship init zsh)"
```

## ℹ️ Additional Information

* This README was automatically generated on Mar 23, 2025
* Current platform: **macos/arm64**
* For more information on dotbins, visit https://github.com/basnijholt/dotbins