return {
  {
    "folke/which-key.nvim",
    opts = {
      spec = {
        -- Bạn có thể đổi tên nhóm <leader>s (mặc định là "search")
        -- thành một tên khác để bao hàm cả tính năng chia màn hình.
        { "<leader>s", group = "Search / Split" },

        -- Định nghĩa rõ ràng cho which-key biết chức năng mới của bạn
        { "<leader>sh", "<cmd>split<cr>", desc = "Split Horizontal", mode = "n" },
        { "<leader>sv", "<cmd>vsplit<cr>", desc = "Split Vertical", mode = "n" },
      },
    },
  },
}
