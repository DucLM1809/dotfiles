return {
  {
    "mg979/vim-visual-multi",
    branch = "master",
    init = function()
      vim.g.VM_default_mappings = 0 -- Tắt một số map mặc định nều không cần thiết
      -- Tùy chỉnh phím tắt nếu cần
      vim.g.VM_maps = {
        ["Find Under"] = "<C-n>", -- Dùng Ctrl + n để chọn từ giống Ctrl + D
        ["Find Subword Under"] = "<C-n>",
        ["Select All"] = "<C-S-l>", -- Giống Ctrl + Shift + L (Chọn tất cả)
        ["Skip Region"] = "q", -- Bỏ qua từ đang chọn để nhảy sang từ tiếp theo
        ["Remove Region"] = "Q", -- Xoá bỏ con trỏ hiện tại
      }
    end,
  },
}
