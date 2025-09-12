-- You probably always want to set this in your vim file
vim.opt.background = "dark"
vim.g.colors_name = "captain"

-- Always reload the theme module for iterative editing
package.loaded["lush_theme.captain"] = nil

-- include our theme file and pass it to lush to apply
require("lush")(require("lush_theme.captain"))
