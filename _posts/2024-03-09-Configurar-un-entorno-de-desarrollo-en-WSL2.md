Una guía paso a paso para configurar un entorno de desarrollo en WSL2, orientada hacia la distribución Debian GNU/Linux. Antes de comenzar a configurar este entorno de desarrollo, verifica que tienes Debian en WSL2. Si estás utilizando otra distribución como Ubuntu, es posible que la configuración también funcione, pero este procedimiento ha sido probado específicamente en Debian y está orientado hacia esa distribución. Es importante tener en cuenta que pueden surgir errores si utilizas una distribución distinta. La razón por la que se recomienda Debian es su estabilidad, desde mi perspectiva, y es perfecta para utilizar en WSL2.

![my-terminal](/assets/img/entorno-wsl2/my-terminal.jpeg)

## Introducción 
Una vez instalado WSL2, es necesario instalar la fuente **[FiraCode Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/FiraCode.zip)**, la cual también puedes encontrar en la página [Nerd Fonts](https://www.nerdfonts.com/). Una vez que la hayas instalado, dentro de la configuración de Windows Terminal, debes seleccionar el tipo de fuente **FiraCode Nerd Font Mono**.

Luego, debes ir al archivo **settings.json** de Windows Terminal, al cual puedes acceder desde la opción que se encuentra en la configuración. Una vez que abras ese archivo, debes modificar la combinación de colores de Campbell por los siguientes colores:

```
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
