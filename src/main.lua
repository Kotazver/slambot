local api = require("telegram-bot-lua").configure(os.getenv("telegram_api_token"))
local utils = require("src.utils")
local db = api.db.connect({ driver = "sqlite", path = "db/slambot.db"})



function api.on_message(msg)

end

function api.on_update(upd)

end

api.run()