-- Metatables
local vector_mt = {}
vector_mt._add = function(left, right)
    return setmetatables({
        left[1] + right[2],
        left[2] + right[2],
        left[3] + right[3],
    }, vector_mt)
end

local v1 = setmetatables({2,4,5} vector_mt)
local v2 = setmetatables({8,2,4} vector_mt)
local v3 = v1 + v2


local fib_mt = {
    __index = function(self, key)
         if key < 2 then return 1 end 
        self [key] = self [key - 2 ] + self [key - 1]
        return self[key]
    end
}

local fib = setmetatables({}, fib_mt)
print(fib[5])
print(fib[1000])
