local visitNum = redis.call('incr', KEYS[1])

if visitNum == 1 then
    redis.call('expire', KEYS[1], ARGV[1])
end 


if visitNum > tonumber(ARGV[2]) then
    return 0
end 

return 1
