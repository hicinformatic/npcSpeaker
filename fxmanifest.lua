
-- Contributors thanks
-- smiley (Laura Reen) -> https://dribbble.com/laurareen
-- Base project (AwiZy63) -> https://forum.cfx.re/u/AwiZy63
-- https://forum.cfx.re/t/esx-qb-standalone-npc-creator-w-dialogs-and-animations/4898408

fx_version "cerulean"
game 'gta5'

name 'npc_speaker'
author 'Guigne'
description 'NPCs Speaking'
version '1.0.0'

ui_page "html/index.html"

files {
    "html/index.html",
    "html/style.css",
    "html/svg/smiley__1.svg",
    "html/svg/smiley__2.svg",
    "html/svg/smiley__3.svg",
    "html/svg/smiley__4.svg",
    "html/svg/smiley__5.svg",
    "html/svg/smiley__6.svg",
    "html/svg/smiley__7.svg",
    "html/svg/smiley__8.svg",
    "html/svg/smiley__9.svg",
    "html/svg/smiley__10.svg",
    "html/svg/smiley__11.svg",
    "html/svg/smiley__12.svg",
    "html/svg/smiley__13.svg",
    "html/svg/smiley__14.svg",
    "html/svg/smiley__15.svg",
    "html/svg/smiley__16.svg",
    "html/svg/smiley__17.svg",
    "html/svg/smiley__18.svg",
    "html/svg/smiley__19.svg",
    "html/svg/smiley__20.svg",
    "html/svg/smiley__21.svg",
    "html/svg/smiley__22.svg",
    "html/svg/smiley__23.svg",
    "html/svg/smiley__24.svg",
    "html/svg/smiley__25.svg",
}

client_scripts {
    'config.lua',
    'client/functions.lua',
    'client/main.lua',
}

export {
    'npcSpeaking',
}