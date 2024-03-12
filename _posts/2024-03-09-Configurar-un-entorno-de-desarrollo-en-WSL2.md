Una guía paso a paso para configurar un entorno de desarrollo en WSL2, orientada hacia la distribución Debian GNU/Linux. Antes de comenzar a configurar este entorno de desarrollo, verifica que tienes Debian en WSL2. Si estás utilizando otra distribución como Ubuntu, es posible que la configuración también funcione, pero este procedimiento ha sido probado específicamente en Debian y está orientado hacia esa distribución. Es importante tener en cuenta que pueden surgir errores si utilizas una distribución distinta. La razón por la que se recomienda Debian es su estabilidad, desde mi perspectiva, y es perfecta para utilizar en WSL2.

![my-terminal](/assets/img/entorno-wsl2/my-terminal.jpeg)

## Introducción 
Una vez instalado WSL2, es necesario instalar la fuente **[FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)**, la cual también puedes encontrar en la página [Nerd Fonts](https://www.nerdfonts.com/). Una vez que la hayas instalado, dentro de la configuración de Windows Terminal, debes seleccionar el tipo de fuente **FiraCode Nerd Font Mono**.

Luego, debes ir al archivo **settings.json** de Windows Terminal, al cual puedes acceder desde la opción que se encuentra en la configuración. Una vez que abras ese archivo, debes modificar la combinación de colores de Campbell por los siguientes colores:

```yml
        {
            "background": "#00061A",
            "black": "#171421",
            "blue": "#3B78FF",
            "brightBlack": "#767676",
            "brightBlue": "#3B78FF",
            "brightCyan": "#61D6D6",
            "brightGreen": "#26A269",
            "brightPurple": "#A347BA",
            "brightRed": "#E74856",
            "brightWhite": "#F2F2F2",
            "brightYellow": "#F9F1A5",
            "cursorColor": "#FFFFFF",
            "cyan": "#3A96DD",
            "foreground": "#FFFFFF",
            "green": "#26A269",
            "name": "Campbell",
            "purple": "#881798",
            "red": "#E74856",
            "selectionBackground": "#FFFFFF",
            "white": "#FFFFFF",
            "yellow": "#C19C00"
        },
```

Después de cambiar la combinación de colores de Campbell, verifica que esa sea la combinación que estás utilizando. Si es así, entonces obtendrías el siguiente resultado en Windows Terminal:

![pwsh-terminal](/assets/img/entorno-wsl2/pwsh-terminal.jpeg)

> **El color de la terminal es:** ***#00061A***

## Configurar Neovim e instalar NvChad
Antes de comenzar a instalar [Neovim](https://neovim.io/), es necesario instalar lo siguiente:

```bash
sudo apt install build-essential git wget curl tar mesa-utils lua 
```

Una vez que hayas concluido la instalación de esos paquetes, ahora sería necesario instalar [Rust](https://www.rust-lang.org/es) con el siguiente comando:

```bash
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

Al terminar la instalación, ahora es necesario que instalemos un administrador de versiones para Neovim, por lo que instalaremos bob con el siguiente comando: ```cargo install bob-nvim```. Luego, para instalar una versión de Neovim compatible con NvChad, ejecutaremos el siguiente comando: ```bob install 0.9.5```.

Para concluir, necesitamos instalar [NvChad](https://nvchad.com/) a través del siguiente comando:

```bash
git clone https://github.com/NvChad/starter ~/.config/nvim && nvim
```

> Ejecute el comando **:MasonInstallAll** después de que lazy.nvim termine de descargar los plugins.

Al terminar la instalación de NvChad, debemos realizar algunas modificaciones en la configuracion de Neovim y para realizar eso debemos ir a la carpeta **"/home/username/.config/nvim/lua/core"**, donde en el archivo **"default_config.lua"**, añadimos el siguiente codigo:

```lua
-- Chadrc overrides this file

local M = {}

M.options = {
  nvChad = {
    update_url = "https://github.com/NvChad/NvChad",
    update_branch = "main",
  },
}

M.ui = {
  -- hl = highlights
  hl_add = {},
  hl_override = {},
  changed_themes = {},
  theme_toggle = { "nightowl", "one_light" },
  theme = "nightowl", -- default theme
  transparency = false,
}

M.plugins = {}

-- check core.mappings for table structure
M.mappings = require "core.mappings"

return M
```

Y en la carpeta **"/home/username/.config/nvim/lua/custom"**, en el archivo **"chadrc.lua"**, añadimos el siguiente codigo:

```lua
---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "nightowl",
  theme_toggle = { "nightowl", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
```

Al terminar la configuración tendremos nuestro editor de código de la siguiente manera:

![nvim-custom.jpeg](/assets/img/entorno-wsl2/nvim-custom.jpeg)

> El tema es **nightowl** pero este tema también está disponible para [*Visual Studio Code*](https://code.visualstudio.com/) con el nombre [**Night Owl**](https://marketplace.visualstudio.com/items?itemName=sdras.night-owl).

## Personalizar Debian GNU/Linux
Para personalizar Debian GNU/Linux, debes tener en cuenta que al final de los cambios que realizaremos, el archivo ```.bashrc``` debería lucir de la siguiente manera:

```bashrc
# Bash Prompt
. ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[33m\]$(__git_ps1 "(%s)")\[\033[00m\]\$\[\033[00m\] '

# Local PATH
export PATH="/home/dylanmeca/.local/bin:$PATH"

# Drop Cache
alias drop_cache="sudo sh -c \"echo 3 >'/proc/sys/vm/drop_caches' && swapoff -a && swapon -a && printf '\n%s\n' 'Ram-cache and Swap Cleared'\""

# Clean
alias clean="sudo apt clean && journalctl --disk-usage && sudo journalctl --vacuum-time=3d"

# Cargo PATH
. "$HOME/.cargo/env"

# nvim PATH
export PATH="$HOME/.local/share/bob/v0.8.3/nvim-linux64/bin:$PATH"

# Manual aliases
alias ll='lsd -lh --group-dirs=first'
alias la='lsd -a --group-dirs=first'
alias l='lsd --group-dirs=first'
alias lla='lsd -lha --group-dirs=first'
alias ls='lsd --group-dirs=first'
alias cat='batcat'
alias icat='icat -m 24bit'

# Functions
function rmk(){
        scrub -p dod $1
        shred -zun 10 -v $1
}

# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

eval "$(oh-my-posh prompt init bash --config $HOME/.poshthemes/catppuccin_mocha.omp.json)"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash
```
