vim.g.vscode_snippets_path = "~/.config/nvim/my_snippets"
local ls = require "luasnip"
local s = ls.snippet
-- local sn = ls.snippet_node
-- local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
-- local f = ls.function_node
-- local c = ls.choice_node
-- local d = ls.dynamic_node
-- local r = ls.restore_node
-- local events = require("luasnip.util.events")
-- local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
-- local l = extras.lambda
local rep = extras.rep
-- local p = extras.partial
-- local m = extras.match
-- local n = extras.nonempty
-- local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
-- local fmta = require("luasnip.extras.fmt").fmta
-- local conds = require("luasnip.extras.expand_conditions")
-- local postfix = require("luasnip.extras.postfix").postfix
-- local types = require("luasnip.util.types")
-- local parse = require("luasnip.util.parser").parse_snippet
-- local ms = ls.multi_snippet
-- local k = require("luasnip.nodes.key_indexer").new_key




ls.add_snippets("html", {
  -- EJS variable output
  s("ejsout", fmt("<%= {} %>", { i(1, "variable") })),



  -- EJS raw tag (no escaping)
  s("ejsraw", fmt("<%- {} %>", { i(1, "rawHTML") })),

  -- EJS code block
  s("ejscode", fmt("<% {} %>", { i(1, "code") })),

  -- If block
  s("ejsif", fmt([[
<% if ({}) {{ %>
  {}
<% }} %>
]], {
    i(1, "condition"),
    i(2, "content"),
  })),

  -- If / else block
  s("ejsife", fmt([[
<% if ({}) {{ %>
  {}
<% }} else {{ %>
  {}
<% }} %>
]], {
    i(1, "condition"),
    i(2, "if_content"),
    i(3, "else_content"),
  })),

  -- For loop
  s("ejsfor", fmt([[
<% for (let {} = 0; {} < {}; {}++) {{ %>
  {}
<% }} %>
]], {
    i(1, "i"),
    rep(1),
    i(2, "array.length"),
    rep(1),
    i(3, "content"),
  })),

  -- Each loop
  s("ejseach", fmt([[
<% {}.forEach(({}) => {{ %>
  {}
<% }}) %>
]], {
    i(1, "array"),
    i(2, "item"),
    i(3, "content"),
  })),

  -- Include partial
  s("ejsinc", fmt("<%- include('{}') %>", { i(1, "partial") })),
})
