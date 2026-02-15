local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"begin",
		fmt(
			[[
        \begin{{{}}}
          {}
        \end{{{}}}
      ]],
			{
				i(1, "env"), -- environment name
				i(2), -- inside
				rep(1), -- repeat environment name
			}
		)
	),
}
