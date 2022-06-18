local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l


local match_result = s(
    "matchr",
    fmt([[
    match {1} {{
        Ok({2}) => {3},
        Err({4}) => {5},
    }};
    ]], {
        i(1, "expr"),
        i(2, "result"),
        i(3, ""),
        i(4, "error"),
        i(5, ""),
    }))


local modtest = s(
    "modtest",
    fmt([[
    #[cfg(test)]
    mod tests {{
        use super::*;

        #[test]
        fn {1}() {{
            {2}
        }} 
    }}
    ]], {
        i(1, "name"),
        i(2, " "),
    }))


local self_dot = s(".", {
    t("self."),
}, {
    condition = function(line_to_cursor)
        local char = string.sub(line_to_cursor, -2, -2)
        return char == ' ' or char == '('
    end,
})

return { match_result, self_dot, modtest }, { }
