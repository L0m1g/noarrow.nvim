local M = {}

-- Valeurs par défaut
M.options = {
    show_message = true,  -- Affiche le message d'avertissement si true
}

-- Configuration du plugin
function M.setup(opts)
    M.options = vim.tbl_extend("force", M.options, opts or {})

    local function handle_arrow()
        if M.options.show_message then
            print("Nope! Utilise h, j, k, l !")
        end
    end

    -- Désactiver les flèches en mode normal
    vim.keymap.set('n', '<Up>', handle_arrow, { noremap = true, silent = true })
    vim.keymap.set('n', '<Down>', handle_arrow, { noremap = true, silent = true })
    vim.keymap.set('n', '<Left>', handle_arrow, { noremap = true, silent = true })
    vim.keymap.set('n', '<Right>', handle_arrow, { noremap = true, silent = true })

    -- Désactiver les flèches en mode insertion
    vim.keymap.set('i', '<Up>', '<Nop>', { noremap = true, silent = true })
    vim.keymap.set('i', '<Down>', '<Nop>', { noremap = true, silent = true })
    vim.keymap.set('i', '<Left>', '<Nop>', { noremap = true, silent = true })
    vim.keymap.set('i', '<Right>', '<Nop>', { noremap = true, silent = true })

    -- Désactiver les flèches en mode visuel
    vim.keymap.set('v', '<Up>', '<Nop>', { noremap = true, silent = true })
    vim.keymap.set('v', '<Down>', '<Nop>', { noremap = true, silent = true })
    vim.keymap.set('v', '<Left>', '<Nop>', { noremap = true, silent = true })
    vim.keymap.set('v', '<Right>', '<Nop>', { noremap = true, silent = true })
end

return M
