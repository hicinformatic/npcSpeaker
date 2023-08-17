# npcSpeaker
Plugin to spawn npcs  and make them talking or thinking

DEMO : https://youtu.be/sx09snwhwLk

# How to install

1. download the git repository
2. uncompress in your fxserver
3. add ensure npcSpeaker to the server.cfg

# How it works :
You need to edit "config.lua" file to add some npcs

```
Config.NpcsList = {
    {
        timer = 7000,
        level = "normal",
        bubble = "speak",
        model = "s_m_y_dockwork_01",
        animated = true,
        animation = {"rcmjosh1@impatient", "idle_b"},
        coords = {1012.236, -2895.534, 10.260, 300.00},
        canDialog = true,
        name = "Edward Elric",
        dialog = "I lost my arm",
        actionDialog = true,
        oldUi = false,
        mood = "face"
  },
  ...
}
```

## Details

| Config  | Description | Default | Options |
| ------------- | ------------- | ------------- | ------------- |
| timer  | display time in ms  | 7000 | - |
| level  | like a log level change the bubble color  | normal | normal, info, success, danger, warning |
| bubble | bubble type | speak | speak, think |
| model | Ped model ( PEDs list can be found here : https://wiki.rage.mp/index.php?title=Peds) | - | - |
| animated | Is animated | false | false/true |
| animation | list info {'category', 'action'} (Animations list can be found here : https://docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm) | - | - |
| coords | GPS coordinates | - | - |
| canDialog | Can dialog or not (just living) | false | false/true |
| name |  NPC's fullname | - | - |
| actionDialog | - | false | false/true |
| oldUi | old ui with ped avatar or new ui html | false | false/true |
| mood | Smiley to display (optional) | - | - |


# OLD UI / NEW UI

old version :

![alt text](https://github.com/hicinformatic/npcSpeaker/blob/main/screens/oldui.png?raw=true)

new version :

![alt text](https://github.com/hicinformatic/npcSpeaker/blob/main/screens/newui.png?raw=true)

## Bubble type

| Speak  | Think |
| ------------- | ------------- |
| ![alt text](https://github.com/hicinformatic/npcSpeaker/blob/main/screens/speak_example.png?raw=true)  | ![alt text](https://github.com/hicinformatic/npcSpeaker/blob/main/screens/think_example.png?raw=true) |

## Mood

| mood |
| ------------- |
| happy | 
| disappointed | 
| excited | 
| sport | 
| sick | 
| angry | 
| zombie | 
| bad | 
| shock | 
| tongue | 
| love | 
| glass | 
| alien | 
| diable | 
| bored | 
| sleep | 
| tired | 
| blushing | 
| angel | 
| dead | 
| fu | 
| cry | 
| alone | 
| face | 
| boss | 
# Next step

- Interact with npc by dialog box or event (accept something, ask something or do a certain emote...)
- Npc should give one time element or multiple time (cooldown, spawn...)
- Make an admin interface to facilitate configuration (qbcore, esx...)

# Thanks to

| #  | Profile | Why |
| ------------- | ------------- | ------------- |
| AwiZy63 | [cfx](https://forum.cfx.re/u/AwiZy63) | [Base project](https://forum.cfx.re/t/esx-qb-standalone-npc-creator-w-dialogs-and-animations/4898408) |
| Laura Reen | [dribble](https://dribbble.com/laurareen) | [Smiley](https://dribbble.com/shots/3544450-Day6-freebies-Stickers-Smileys) |
| grayghostvisuals | [codepen](https://codepen.io/grayghostvisuals/pens/public) | [Bubble base](https://codepen.io/grayghostvisuals/pen/GqzRox?editors=1100) |
| Grant | [codepen](https://codepen.io/quadbaup) | [Bubble think](https://codepen.io/quadbaup/pen/rKOKQv) |

