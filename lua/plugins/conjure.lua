return {
  -- Conjure
  {
    "Olical/conjure",
    ft = { "clojure", "fennel", "scheme", "lua", "python" },
  },

  -- Autocomplete via blink.cmp (padrão do LazyVim atual)
  {
    "saghen/blink.cmp",
    dependencies = {
      "PaterJason/cmp-conjure",
      "saghen/blink.compat",
    },
    opts = {
      sources = {
        compat = { "conjure" },
      },
    },
  },
}
