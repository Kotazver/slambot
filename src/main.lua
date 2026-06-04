local api = require("telegram-bot-lua").configure(os.getenv("telegram_api_token"))
local sqlite = require("lsqlite3")
local utils = require("src.utils")

local db = sqlite.open("db/slambot.db")
db:exec([[
    CREATE TABLE IF NOT EXISTS groups (
        chat_id INTEGER PRIMARY KEY
    );
    
    CREATE TABLE IF NOT EXISTS settings (
        chat_id INTEGER NOT NULL,
        gallery_1 INTEGER,
        gallery_2 INTEGER,

        FOREIGN KEY(chat_id) REFERENCES groups(chat_id)
    )
]])

if db:errmsg() == "not an error" then
    print("Database tables successfully created")
else
    print(db:errmsg())
end

---------------
-- FUNCTIONS --
--------------



--------------
-- HANDLERS --
--------------

function api.on_message(msg)

end

function api.on_update(upd)

end

api.run()