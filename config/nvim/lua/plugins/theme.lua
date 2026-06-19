return {
  -- 1. Cài đặt plugin Cyberdream
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false, -- Load ngay khi khởi động
    priority = 1000, -- Load trước các plugin khác
    opts = {
      -- Bật nền trong suốt (để nhìn thấy hình nền hoặc hiệu ứng mờ của Warp)
      transparent = true,

      -- Làm nghiêng comment (nhìn nghệ hơn)
      italic_comments = true,

      -- Ẩn viền gạch dọc (Fillchars) cho giao diện sạch sẽ
      hide_fillchars = true,

      -- Cấu hình viền (Border) cho các cửa sổ nổi (LSP, LazyGit...)
      border = "rounded",

      -- Tích hợp sẵn với các plugin khác
      extensions = {
        telescope = true,
        notify = true,
        mini = true,
      },
    },
  },

  -- 2. Kích hoạt theme cho LazyVim
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
