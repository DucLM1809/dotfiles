return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- 'default' preset gán Enter là xuống dòng
      -- Bạn cần override lại phím <CR> (Enter)
      preset = "default",

      -- Cấu hình: Nếu menu mở -> accept, ngược lại -> xuống dòng (fallback)
      ["<CR>"] = { "accept", "fallback" },
    },
  },
}
