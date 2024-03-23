local function get_test_file()
  local extension = vim.bo.filetype
  if not extension == 'ruby' then
    return
  end

  local filename = vim.fn.expand('%:t')
  local file_head = vim.fn.expand('%:h')
  local formatted_extension
  local formatted_head

  local test_file
  if not filename.match(filename, "_spec.rb") then
    formatted_extension = filename.gsub(filename, ".rb", "_spec.rb")
    formatted_head = file_head.gsub(file_head, "app", "spec")

    test_file = formatted_head .. "/" .. formatted_extension
  else
    test_file = "%"
  end

  return test_file
end

local function run_test_file()
  return vim.cmd("vsplit | terminal rspec " .. get_test_file() .. " -f d")
end

local function run_current_test()
  local line = vim.api.nvim_win_get_cursor(0)[1]

  return vim.cmd("vsplit | terminal rspec " .. get_test_file() .. ":" .. line .. " -f d")
end

local function debug_current_test()
  local line = vim.api.nvim_win_get_cursor(0)[1]

  return vim.cmd("vsplit | terminal DEBUG=true rspec " .. get_test_file() .. ":" .. line .. " -f d")
end

local function go_to_test_file()
  local extension = vim.bo.filetype
  if not extension == 'ruby' then
    return
  end

  local filename = vim.fn.expand('%:t')
  local file_head = vim.fn.expand('%:h')
  local formatted_extension
  local formatted_head
  if filename.match(filename, "_spec.rb") then
    formatted_extension = filename.gsub(filename, "_spec.rb", ".rb")
    formatted_head = file_head.gsub(file_head, "spec", "app")
  else
    formatted_extension = filename.gsub(filename, ".rb", "_spec.rb")
    formatted_head = file_head.gsub(file_head, "app", "spec")
  end

  local command = "e " .. formatted_head .. "/" .. formatted_extension
  return vim.cmd(command)
end

return {
  run_current_test = run_current_test,
  run_test_file = run_test_file,
  debug_current_test = debug_current_test,
  go_to_test_file = go_to_test_file
}
