-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- -- Nhấn 'jk' liên tiếp trong insert mode để thoát ra normal mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
-- Nhấn Leader + w để lưu (Mặc định LazyVim là <C-s> hoặc :w)
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
-- Nhấn Leader + q để thoát (Quit)
vim.keymap.set("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" })
-- Di chuyển khối văn bản đã bôi đen lên xuống
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move up" })
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>", { desc = "Clear search highlights" })
-- Bấm Leader + u + t để bật/tắt nền trong suốt
vim.keymap.set("n", "<leader>ut", ":CyberdreamToggleMode<CR>", { desc = "Toggle Transparency (Cyberdream)" })

-- Resize panes bằng Alt/Option + h, j, k, l
vim.keymap.set("n", "<M-k>", "<cmd>resize +2<cr>", { desc = "Tăng chiều cao (Up)" })
vim.keymap.set("n", "<M-j>", "<cmd>resize -2<cr>", { desc = "Giảm chiều cao (Down)" })
vim.keymap.set("n", "<M-h>", "<cmd>vertical resize -2<cr>", { desc = "Giảm chiều rộng (Left)" })
vim.keymap.set("n", "<M-l>", "<cmd>vertical resize +2<cr>", { desc = "Tăng chiều rộng (Right)" })

-- Xoá keymap mặc định của LazyVim để tránh xung đột
-- (Chặn LazyVim mở bảng Search Help khi bấm <leader>sh)
pcall(vim.keymap.del, "n", "<leader>sh")

-- Map lại Split Pane theo ý bạn
vim.keymap.set("n", "<leader>sh", "<cmd>split<cr>", { desc = "Split Horizontal (Chia ngang)" })
vim.keymap.set("n", "<leader>sv", "<cmd>vsplit<cr>", { desc = "Split Vertical (Chia dọc)" })

-- Gọi opencommit trong floating terminal của LazyVim
vim.keymap.set("n", "<leader>oc", function()
  -- Kiểm tra xem Snacks có sẵn không (chuẩn mới của LazyVim)
  if package.loaded["snacks"] then
    Snacks.terminal("oco")
  else
    -- Fallback cho các bản LazyVim cũ hơn
    vim.cmd("term oco")
  end
end, { desc = "Run OpenCommit (Gemini)" })
