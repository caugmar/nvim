return {
  -- 1. Zen Mode: O coração da escrita focada
  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    opts = {
      window = {
        width = 0.85, -- Largura da área de texto
        options = {
          number = false, -- Esconde números de linha
          relativenumber = false, -- Esconde números relativos
          cursorline = false, -- Esconde o destaque da linha do cursor
          signcolumn = "no", -- Esconde a coluna de erros/git
        },
      },
      plugins = {
        gitsigns = { enabled = false },
        tmux = { enabled = false },
      },
    },
    keys = {
      { "<leader>uz", "<cmd>ZenMode<cr>", desc = "Toggle Zen Mode (Escrita)" },
    },
  },

  -- 2. Twilight: Ilumina apenas o parágrafo atual
  {
    "folke/twilight.nvim",
    opts = {
      dimming = { alpha = 0.25 }, -- Quão escuro fica o texto inativo
    },
  },

  -- 3. Vim-Pencil: Melhora o fluxo de texto (soft wraps)
  {
    "preservim/vim-pencil",
    init = function()
      vim.g["pencil#wrapModeDefault"] = "soft"
      vim.g["pencil#autoformat"] = 1
    end,
  },

  -- 4. Configurações automáticas para Markdown e Texto
  {
    "neovim/nvim-lspconfig",
    opts = {
      -- Isso garante que corretor ortográfico ligue sozinho nesses arquivos
      setup = {
        ["*"] = function()
          vim.api.nvim_create_autocmd("FileType", {
            pattern = { "markdown", "txt", "tex" },
            callback = function()
              vim.opt_local.spell = true
              vim.opt_local.spelllang = { "pt", "en" }
              vim.opt_local.wrap = true
              vim.opt_local.linebreak = true
              vim.diagnostic.enable(false)
              vim.cmd("PencilSoft")
            end,
          })
        end,
      },
    },
  },
}
