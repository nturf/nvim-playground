-- for loop
local kitties = { 'leelee', 'daesie', 'masau' }
for index = 1, #kitties do
    print(index, kitties[index])
end

for index, value in ipairs(kitties) do
    print(index, value)
end


-- iteratin over a map
local food = { quantity = 10, product = 'churu' }
for index = 1, #food do
    print(food[index]) -- no output since the 'length' is 0 (map)
end

local newFoods = { quantity = 55, product = 'whiskas' }
for key, value in pairs(newFoods) do
    print(key, value)
end

-- if
local function shelter(petsAvailable)
    if petsAvailable then
        print('feel free to come by and pick one')
    else
        print('aaa aa. we will notify you once we rescue')
        print('hey! there')
    end
end
-- falsey
shelter()
shelter(false)

-- truthy
shelter(true)
shelter(0)
shelter({})
