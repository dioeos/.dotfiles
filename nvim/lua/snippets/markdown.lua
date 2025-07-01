local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

return {
	s("Process", {
		t({
			"# Process",
			"",
			"## Step 1: Understanding the Problem",
			"",
			"## Step 2: Approach",
			"",
			"## Step 3: Runtime Analysis",
		}),
		i(0),
	}),

	s("In", {
		t({
			"<u>In the context of Win32 API</u>",
		}),
		i(0),
	}),
}
