-- variables
local number = 65
local string = "Hey! There"
local boolt, boolf = true, false
local nothing = nil

-- Functions
local function hello(name)
    print('Greetings,' .. name .. '!')
end
hello("kitty")

local greet = function(name)
    print("Greetings, " .. name .. "!")
end
greet('meow')

-- Higher order function
local higher_order = function(value)
    return function(another)
        return value + another
    end
end

local add_one = higher_order(1)
print('add_one(2) ->', add_one(25))

-- Tables
-- an list
local list = { 'first', 2, false, function() print('Fourth!') end }
print(list[1])
print(list[4]())

-- an map
local t = {
    literal_key       = 'a string ',
    ['an expression'] = 'works',
    [function() end]  = true
}

print('literal_key : ', t.literal_key)
print('an expression : ', t['an expression'])
print('function() end : ', t[function() end])
