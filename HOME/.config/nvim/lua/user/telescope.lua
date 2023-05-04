require('telescope').setup{
  defaults = {
    scroll_strategy = "limit",
    file_ignore_patterns = {
      "node_modules/",
      ".git/"
    },
  },
  pickers = {
    find_files = {
      hidden = true,
    },
    live_grep = {
      additional_args = function()
        return {'--hidden'}
      end
    }
  }
}
