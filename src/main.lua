local api = require("telegram-bot-lua").configure(os.getenv("telegram_api_token"))

function api.on_message(msg)

end

function api.on_update(upd)

end

api.run()