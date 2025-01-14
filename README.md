# NoArrow

**NoArrow** est un plugin Neovim qui désactive les touches fléchées pour forcer l'utilisation des touches `hjkl`. Parfait pour adopter de bonnes habitudes de navigation !

## ✨ Fonctionnalités

- Bloque les flèches (`↑ ↓ ← →`) en **mode normal**, **insertion** et **visuel**.  
- Option d’affichage d’un message d’avertissement.

## 🚀 Installation

### Avec [Lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
    "L0m1g/noarrow",
    config = function()
        require("noarrow").setup({
            show_message = true,  -- Affiche un message (ou false pour silence total)
        })
    end
}
```

### Avec [Packer](https://github.com/wbthomason/packer.nvim)

```lua
use({
    "L0m1g/noarrow",
    config = function()
        require("noarrow").setup({
            show_message = true,
        })
    end
})
```

### Avec [vim-plug](https://github.com/junegunn/vim-plug)

```lua
Plug 'L0m1g/noarrow'
```

puis rajoute à ton `ìnit.lua`

```lua
require("noarrow").setup({
    show_message = true,
})
```

## ⚙️ Options

| Option         | Description                                   | Valeur par défaut |
|----------------|-----------------------------------------------|-------------------|
| `show_message` | Affiche un message lorsqu'on appuie sur les flèches ↑ ↓ ← → | `true`            |
