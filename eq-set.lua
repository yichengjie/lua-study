local key1 = KEYS[1]
local key2 = KEYS[2]
local val = redis.call('GET', key1)

if val == ARGV[1] then
    redis.call('SET', key1, ARGV[2])
    return 1 
else
    return 0 
end 