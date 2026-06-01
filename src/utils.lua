local json = require("dkjson")

local utils = {}

utils.readCfg = function (filename)
    local f = io.open(filename, "r")

    if not f then
        io.write("Something went wrong while reading config file")
    else
        local json_content = f:read("a")
        local json_parsed = json.decode(json_content)
        return json_parsed
    end

    io.flush()
end