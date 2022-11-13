local function run_test_file()
  return vim.cmd("! rspec %")
end

local function run_current_test()
  local line, col = unpack(vim.api.nvim_win_get_cursor(0))

  return vim.cmd("! rspec %:" .. line)
end

return {
  run_current_test = run_current_test,
  run_test_file = run_test_file
}
