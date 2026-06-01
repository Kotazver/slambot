local json = require("dkjson")

local utils = {}

utils.readCfg = function (filename)
    local f = io.open(filename, "r")

    if not f then
        return "Something went wrong while reading file"
    else
        local json_content = f:read("a")
        local json_parsed = json.decode(json_content)
        f:close()
        return json_parsed
    end
end

utils.writeCfg = function (filename, content)
    local f = io.open(filename, "w")

    if not f then
        return false, "Something went wrong while writing file"
    else
        local jsonied_table = json.encode(content, {indent = true})
        f:write(jsonied_table):close()

        return true
    end
end

return utils