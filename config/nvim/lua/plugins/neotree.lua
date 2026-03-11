return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false,
    config = function()
      -- setup Neo-tree avec tes options
      require("neo-tree").setup({
        window = {
          mappings = {
            ["<Tab>"] = "open",  -- Tab pour ouvrir
          },
        },
        filesystem = {
          hijack_netrw_behavior = "open_current",
        },
      })

      -- ensuite overrides pour la transparence
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
      vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
    end,
  },
}
