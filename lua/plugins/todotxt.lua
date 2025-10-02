return {
  "phrmendes/todotxt.nvim",
  cmd = { "TodoTxt", "DoneTxt" },
  opts = {
    todotxt = "/home/guto/MEGAsync/Pessoais/todo.txt",
    donetxt = "/home/guto/MEGAsync/Pessoais/done.txt",
    ghost_text = {
      enable = true,
      mappings = {
        ["(A)"] = "now",
        ["(B)"] = "next",
        ["(C)"] = "today",
      },
    },
  },
}
