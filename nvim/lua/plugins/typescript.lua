return {
  -- 1. Cấu hình LSP (vtsls) & ESLint
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- Vtsls: Phiên bản nâng cấp của tsserver
        vtsls = {
          -- Tự động sửa import khi di chuyển file (Rất cần cho NestJS khi refactor)
          settings = {
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              inlayHints = {
                parameterNames = { enabled = "literals" }, -- Hiện tên tham số (giống VSCode)
                parameterTypes = { enabled = true },
                variableTypes = { enabled = false },
                propertyDeclarationTypes = { enabled = true },
                functionLikeReturnTypes = { enabled = false },
                enumMemberValues = { enabled = true },
              },
              format = {
                -- vtsls sẽ KHÔNG chèn space vào {} rỗng nữa.
                insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false,
              },
            },
            javascript = {
              format = {
                insertSpaceAfterOpeningAndBeforeClosingEmptyBraces = false,
              },
            },
            -- Tăng tốc độ completion
            vtsls = {
              enableMoveToFileCodeAction = true,
              autoUseWorkspaceTsdk = true,
              experimental = {
                completion = {
                  enableServerSideFuzzyMatch = true,
                },
              },
            },
          },
        },
        -- ESLint: Tự động fix lỗi lint
        eslint = {
          settings = {
            workingDirectories = { mode = "auto" },
          },
        },
      },
    },
  },

  -- 2. Cấu hình Treesitter (Highlight màu mè cho TSX, NestJS Decorators)
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, {
          "typescript",
          "tsx", -- Cho React
          "javascript",
          "css",
          "html",
          "json",
          "yaml", -- NestJS hay dùng file config yaml
          "prisma", -- Nếu bạn dùng Prisma ORM
        })
      end
    end,
  },

  -- 3. Cấu hình Formatter (Prettier) - Format on Save
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
        javascriptreact = { "prettierd" }, -- React .jsx
        typescriptreact = { "prettierd" }, -- React .tsx
        css = { "prettierd" },
        html = { "prettierd" },
        json = { "prettierd" },
        yaml = { "prettierd" },
      },
    },
  },
}
