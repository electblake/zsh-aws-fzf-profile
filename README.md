# fzap

**fzap** is a simple and effective Zsh plugin for selecting and switching AWS profiles using `fzf`. It's designed to enhance your AWS CLI experience by providing an interactive fuzzy finder for your AWS profiles.

## Features

- **Quick Profile Switching**: Easily switch between AWS profiles using `fzf`.
- **Interactive Interface**: Select profiles with a user-friendly fuzzy search.
- **Aliases for Convenience**: Includes an alias `fuzzy-aws-profile` for quick access.

## Example Usage

```sh
# Invoke the plugin to switch AWS profiles
fzap

# Or use the alias
fuzzy-aws-profile
```

## Dependencies

- **AWS CLI**: The plugin requires the AWS CLI to be installed and configured.
- **fzf**: `fzf` is used for the fuzzy finding interface.

## Installation

### zgenom

```zsh
source "${HOME}/.zgenom/zgenom.zsh"

if ! zgenom saved; then
    zgenom load electblake/fzap
    zgenom save
fi
```

```zsh
zgenom reset && zgenom save && exec zsh
```

### zgen

```zsh
source "${HOME}/.zgen/zgen.zsh"

if ! zgen saved; then
    zgen load electblake/fzap
    zgen save
fi
```

```zsh
zgen reset && zgen save && exec zsh
```

### Oh My Zsh

```zsh
git clone https://github.com/electblake/fzap.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzap
plugins+=(fzap)
```

### zplug

```zsh
zplug "electblake/fzap"
zplug install
```

### antigen

```zsh
source /path/to/antigen.zsh
antigen bundle electblake/fzap
antigen apply
```
