return {
    cmd = {'pyright'},
    filetypes = {'py'}, 
    root_markers = {'.venv', 'main.py'},
    on_attach = function(client, bufnr)
        vim.lsp.completion.enable(true, client.id, bufnr, {
          autotrigger = true,
          convert = function(item)
            return { abbr = item.label:gsub('%b()', '') }
          end,
        })
      end,
}

