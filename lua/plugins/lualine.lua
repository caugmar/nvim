return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      -- Função para contar palavras (apenas em Markdown e Texto)
      local function wordcount()
        if vim.bo.filetype == "markdown" or vim.bo.filetype == "txt" then
          return "󰚵 " .. tostring(vim.fn.wordcount().words) .. " palavras"
        end
        return ""
      end

      -- Insere o contador na seção 'x' da barra (canto inferior direito)
      table.insert(opts.sections.lualine_x, { wordcount })
    end,
  },
}
