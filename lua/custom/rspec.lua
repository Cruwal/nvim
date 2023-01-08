local function run_test_file()
  return vim.cmd("! rspec %")
end

local function run_current_test()
  local line = vim.api.nvim_win_get_cursor(0)[1]

  return vim.cmd("! rspec %:" .. line)
end

local function go_to_test_file()
  local extension = vim.bo.filetype
  if not extension == 'ruby' then
    return
  end

  local filename = vim.fn.expand('%:t')
  local file_head = vim.fn.expand('%:h')
  if filename.match(filename, "_spec.rb") then
    Formatted_extension = filename.gsub(filename, "_spec.rb", ".rb")
    Formatted_head = file_head.gsub(file_head, "spec", "app")
  else
    Formatted_extension = filename.gsub(filename, ".rb", "_spec.rb")
    Formatted_head = file_head.gsub(file_head, "app", "spec")
  end

  local command = "e " .. Formatted_head .. "/" .. Formatted_extension
  return vim.cmd(command)
end

return {
  run_current_test = run_current_test,
  run_test_file = run_test_file,
  go_to_test_file = go_to_test_file
}
