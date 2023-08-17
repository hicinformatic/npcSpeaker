Config = {}
Config.NpcsList = {
    {
        timer = 7000, -- display time
        level = "normal", -- level (normal, info, danger, warning)
        bubble = "speak", -- bubble type (speak, think)
        model = "s_m_y_dockwork_01", -- PEDs list can be found here : https://wiki.rage.mp/index.php?title=Peds
        animated = true,
        animation = {"rcmjosh1@impatient", "idle_b"}, -- Animations list can be found here : https://docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
        coords = {1012.236, -2895.534, 10.260, 300.00}, -- GPS coordinates
        canDialog = true, -- Can dialog or not (just living)
        name = "Le passeur", -- NPC Name
        dialog = "Dépêche toi avant que la douane nous tombe dessus. Récupère ton blé, ton téléphone et dégage de mon bateau!", -- npc dialog
        actionDialog = true, -- need to press action button to dialog
        oldUi = false, -- old ui with ped avatar or new ui html...
        mood = "face", -- Smiley to display (optional)
    },
    {
        timer = 7000, -- display time
        level = "normal", -- level (normal, info, danger, warning)
        bubble = "think", -- bubble type (speak, think)
        model = "s_m_m_dockwork_01", -- PEDs list can be found here : https://wiki.rage.mp/index.php?title=Peds
        animated = true,
        animation = {"amb@world_human_bum_standing@drunk@base", "base"}, -- Animations list can be found here : https://docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm
        coords = {1022.530, -2890.892, 34.168, 300.00}, -- GPS coordinates
        canDialog = true, -- Can dialog or not (just living)
        name = "Martin le marin", -- NPC Name
        dialog = "Enfin arrivé! *burp*, j'ai cru que j'allais crever avec tout ces clandestins qu'on à ramené... quel enfer !",
        actionDialog = false, -- need to press action button to dialog
        oldUi = false, -- old ui with ped avatar
        mood = "sick", -- Smiley to display (optional)
    },
}

-- SMILEY
-- happy: "svg/smiley__1.svg",
-- disappointed: "svg/smiley__2.svg",
-- excited: "svg/smiley__3.svg",
-- sport: "svg/smiley__4.svg",
-- sick: "svg/smiley__5.svg",
-- angry: "svg/smiley__6.svg",
-- zombie: "svg/smiley__7.svg",
-- bad: "svg/smiley__8.svg",
-- shock: "svg/smiley__9.svg",
-- tongue: "svg/smiley__10.svg",
-- love: "svg/smiley__11.svg",
-- glass: "svg/smiley__12.svg",
-- alien: "svg/smiley__13.svg",
-- diable: "svg/smiley__14.svg",
-- bored: "svg/smiley__15.svg",
-- sleep: "svg/smiley__16.svg",
-- tired: "svg/smiley__17.svg",
-- blushing: "svg/smiley__18.svg",
-- angel: "svg/smiley__19.svg",
-- dead: "svg/smiley__20.svg",
-- fu: "svg/smiley__21.svg",
-- cry: "svg/smiley__22.svg",
-- alone: "svg/smiley__23.svg",
-- face: "svg/smiley__24.svg",
-- boss: "svg/smiley__25.svg",