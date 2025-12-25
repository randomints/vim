return {
	{
		"OXY2DEV/markview.nvim",
		lazy = false,
		dependencies = {
			"saghen/blink.cmp",
		},
	},
	{
		"3rd/image.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("image").setup({
				backend = "kitty",

				window_overlap_clear_enabled = true,
				editor_only_render_when_focused = true,

				integrations = {
					markdown = {
						enabled = true,
						only_render_image_at_cursor = false, -- 👈 always render
						clear_in_insert_mode = false,
						download_remote_images = true,
					},
				},

				max_width = 80,
				max_height = 20,
				max_width_window_percentage = 50,
			})
		end,
	},
  {
    "lervag/vimtex",
    lazy = false,
    config = function()
      vim.g.vimtex_view_method = "skim"
      vim.g.vimtex_view_forward_search_on_start = false
      vim.g.vimtex_compiler_latexmk = {
        aux_dir = "/Users/raahimshahzadazfar/.texfiles/",
        out_dir = "/Users/raahimshahzadazfar/.texfiles/",
      }
    end,
  },
}
