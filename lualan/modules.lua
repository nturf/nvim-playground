-- assume its file foo.lua
local M = {}
M.cool_function = function() end
-- return M

-- bar.lua
local foo = require('foo')
foo.cool_function()

-- function multiple returns
local returns_four_value = function()
    return 1, 2, 3, 4
end

local first, second, last = returns_four_value()

print('first', first)
print('second', second)
print('last', last)
-- fourt is discarded

local variable_arg = function(...)
    local arg = { ... }
    for i, v in ipairs({ ... }) do print(i, v) end
    return unpack(arg)
end

print('1:', variable_arg('hello', 'world', '!'))
print('1:', variable_arg('hello', 'world', '!'), '<lost>')

-- Functions: colon function
local MyTable = {}

function MyTable.something(self, ...) end
function MyTable:something(...) end
