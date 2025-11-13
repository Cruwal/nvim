local colorscheme = "tokyonight"

local ok, schema = pcall(require, colorscheme)
if not ok then
  vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

schema.setup({
  style = "night"
})

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("Could not set the " .. colorscheme .. " colorscheme!")
  return
end
