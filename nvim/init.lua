-- local function detect_c_compiler()
-- 	local candidates = { "gcc", "clang", "cl" }
--
-- 	for _, exe in ipairs(candidates) do
-- 		if vim.fn.executable(exe) == 1 then
-- 			return exe
-- 		end
-- 	end
--
-- 	return nil
-- end
--
-- local cc = detect_c_compiler()
--
-- if cc then
-- 	vim.g.c_compiler = cc
-- 	vim.notify("Using C compiler: " .. cc, vim.log.levels.INFO)
-- else
-- 	vim.notify("No C compiler found in PATH", vim.log.levels.WARN)
-- end

vim.g.mapleader = " "
require("setup")
