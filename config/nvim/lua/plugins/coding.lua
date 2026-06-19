return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- Preset 'default' dùng Ctrl+Space để kích hoạt, Enter để chọn
      preset = "default",

      -- Map phím Ctrl+j và Ctrl+k
      ["<C-j>"] = { "select_next", "fallback" },
      ["<C-k>"] = { "select_prev", "fallback" },
    },
  },
}
