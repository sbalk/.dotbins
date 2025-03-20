# 🛠️ dotbins Tool Collection

[![dotbins](https://img.shields.io/badge/powered%20by-dotbins-blue.svg?style=flat-square)](https://github.com/basnijholt/dotbins) [![Version](https://img.shields.io/badge/version-0.19.1.post1+gac4ecdf-green.svg?style=flat-square)](https://github.com/basnijholt/dotbins/releases)

This directory contains command-line tools automatically managed by [dotbins](https://github.com/basnijholt/dotbins).

## 📋 Table of Contents

- [What is dotbins?](#-what-is-dotbins)
- [Installed Tools](#-installed-tools)
- [Tool Statistics](#-tool-statistics)
- [Shell Integration](#-shell-integration)
- [Updating Tools](#-updating-tools)
- [Quick Commands](#-quick-commands)
- [Configuration File](#-configuration-file)
- [Additional Information](#ℹ️-additional-information)

## 📦 What is dotbins?

**dotbins** is a utility for managing CLI tool binaries in your dotfiles repository. It downloads and organizes binaries for popular tools across multiple platforms (macOS, Linux) and architectures (amd64, arm64).

## 🔍 Installed Tools

| Tool | Repository | Version | Updated | Platforms & Architectures |
| :--- | :--------- | :------ | :------ | :------------------------ |
| [atuin](https://github.com/atuinsh/atuin) | atuinsh/atuin | 18.4.0 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [bat](https://github.com/sharkdp/bat) | sharkdp/bat | 0.25.0 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [delta](https://github.com/dandavison/delta) | dandavison/delta | 0.18.2 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [direnv](https://github.com/direnv/direnv) | direnv/direnv | 2.35.0 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [duf](https://github.com/muesli/duf) | muesli/duf | 0.8.1 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [eza](https://github.com/eza-community/eza) | eza-community/eza | 0.20.24 | Mar 17, 2025 | linux (amd64, arm64) |
| [fd](https://github.com/sharkdp/fd) | sharkdp/fd | 10.2.0 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [fzf](https://github.com/junegunn/fzf) | junegunn/fzf | 0.60.3 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [git-lfs](https://github.com/git-lfs/git-lfs) | git-lfs/git-lfs | 3.6.1 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [lazygit](https://github.com/jesseduffield/lazygit) | jesseduffield/lazygit | 0.48.0 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [micromamba](https://github.com/mamba-org/micromamba-releases) | mamba-org/micromamba-releases | 2.0.8-0 | Mar 19, 2025 | linux (amd64, arm64) • macos (arm64) |
| [ripgrep](https://github.com/BurntSushi/ripgrep) | BurntSushi/ripgrep | 14.1.1 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |
| [uv](https://github.com/astral-sh/uv) | astral-sh/uv | 0.6.9 | Mar 20, 2025 | linux (amd64, arm64) • macos (arm64) |
| [yazi](https://github.com/sxyazi/yazi) | sxyazi/yazi | 25.3.2 | Mar 19, 2025 | linux (amd64, arm64) • macos (arm64) |
| [zoxide](https://github.com/ajeetdsouza/zoxide) | ajeetdsouza/zoxide | 0.9.7 | Mar 17, 2025 | linux (amd64, arm64) • macos (arm64) |

## 📊 Tool Statistics

<div align='center'><h3>📦 44 Tools | 💾 472.98 MB Total Size</h3></div>

| Tool | Total Size | Avg Size per Architecture |
| :--- | :-------- | :------------------------ |
| uv | 102.3 MB | 34.1 MB |
| atuin | 93.02 MB | 31.01 MB |
| lazygit | 54.16 MB | 18.05 MB |
| micromamba | 46.24 MB | 15.41 MB |
| yazi | 37.87 MB | 12.62 MB |
| git-lfs | 34.49 MB | 11.5 MB |
| direnv | 20.0 MB | 6.67 MB |
| delta | 18.49 MB | 6.16 MB |
| bat | 16.3 MB | 5.43 MB |
| ripgrep | 15.46 MB | 5.15 MB |
| fzf | 11.29 MB | 3.76 MB |
| fd | 9.65 MB | 3.22 MB |
| duf | 6.56 MB | 2.19 MB |
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

## 🔄 Updating Tools

### Update all tools
```bash
dotbins update
```

### Update specific tools only
```bash
dotbins update tool1 tool2
```

### Update for current platform only
```bash
dotbins update --current
```

## 🚀 Quick Commands

<details>
<summary>All available commands</summary>

```
dotbins list           # List all available tools
dotbins init           # Initialize directory structure
dotbins update         # Update all tools
dotbins readme         # Regenerate this README
dotbins versions       # Show installed tool versions
dotbins get REPO       # Install tool directly to ~/.local/bin
```
</details>

## 📁 Configuration File

dotbins is configured using a YAML file (`dotbins.yaml`). Here's the configuration file used to manage these tools:

```yaml
# Configuration
tools_dir: ~/.dotbins

platforms:
  linux:
    - amd64
    - arm64
  macos:
    - arm64

# Tool definitions
tools:
  fzf:
    repo: junegunn/fzf

  bat:
    repo: sharkdp/bat

  eza:
    repo: eza-community/eza
    arch_map:
      amd64: x86_64
      arm64: aarch64
    asset_patterns:
      linux: eza_{arch}-unknown-linux-gnu.tar.gz
      macos: null  # No macOS binaries available as of now

  zoxide:
    repo: ajeetdsouza/zoxide

  delta:
    repo: dandavison/delta

  uv:
    repo: astral-sh/uv
    binary_name: [uv, uvx]
    binary_path: [uv-*/uv, uv-*/uvx]

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

  atuin:
    repo: atuinsh/atuin
    arch_map:
      amd64: x86_64
      arm64: aarch64
    asset_patterns:
      linux: atuin-{arch}-unknown-linux-gnu.tar.gz
      macos: atuin-{arch}-apple-darwin.tar.gz

  git-lfs:
    repo: git-lfs/git-lfs

  ripgrep:
    repo: BurntSushi/ripgrep
    binary_name: rg

  direnv:
    repo: direnv/direnv
    extract_binary: false

  lazygit:
    repo: jesseduffield/lazygit

  fd:
    repo: sharkdp/fd

  duf:
    repo: muesli/duf

  yazi:
    repo: sxyazi/yazi
```

## ℹ️ Additional Information

* This README was automatically generated on Mar 20, 2025
* Current platform: **macos/arm64**
* For more information on dotbins, visit https://github.com/basnijholt/dotbins