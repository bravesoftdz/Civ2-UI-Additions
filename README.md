# Civilization II User Interface Additions

## Description
This launcher will add some enhancements to Sid Meier's Civilization II: Multiplayer Gold Edition without modifying game executable.

## Features added
 - Mouse wheel and middle button support
   - Scroll lists, change city specialists, change taxes
   - Ctrl + wheel - zoom map, Ctrl + middle button - normal zoom level
   - Middle button click on map - center map on that spot
   - Middle button drag map - panning
 - Scrollbar was added to Activate Unit popup dialog with more than 9 units in stack. Now you can choose any unit in stack beyond limit of 9
 
 ![Screenshot](Screenshots/UnitsPopupListWithScrollbar.png?raw=true "Screenshot")
 - For Settlers and Engineers internal work counter is shown over the unit sprite. This means that you can see how much work is exactly accumulated in unit.
 
![Screenshot](Screenshots/EngineersCounter.png?raw=true "Screenshot")
 - Click-bounds of specialists sprites corrected in city screen
 - Number of the game turn is displayed in the status sidebar

![Screenshot](Screenshots/GameTurn.png?raw=true "Screenshot")
 - Current research numbers are displayed in Science Advisor for precise research control

![Screenshot](Screenshots/ScienceAdvisor.png?raw=true "Screenshot")
 - Correct CD audio tracks looping and displaying play progress

![Screenshot](Screenshots/CDAudioTrackProgress.png?raw=true "Screenshot")
 - Game icon fix (visible in Alt+Tab popup)
 - Resetting city name prompts, when restarting a new game without closing program
 - Show buildings even with zero maintenance cost in Trade Advisor
 
![Screenshot](Screenshots/TradeAdvisorZeroCost.png?raw=true "Screenshot")
 - Scrollbar for supported units in the city window. And a number of total supported units.
 
![Screenshot](Screenshots/CityWindowSupport.png?raw=true "Screenshot")
 - 64-bit patch included
 - No-CD patch included (note that this disables intro/wonders movies and High Council movies)
 - Enable multiplayer for Windows 8, 10 (must work on older OS also)
 - Option for enabling Simultaneous moves in multiplayer. This is the same as writing 'Simultaneous=1' string to the CIV.INI file. With this option enabled, the multiplayer feature 'Humans Move Units at the Same Time' should be available when setting up a new multiplayer game.

Some experimental features that could change some original game rules or limitations without a guarantee of stability:
 - Change total units limit from default 2048. Don't use numbers greater than 32767. Saves with number of units greater than default should be loaded only with this patch.

Also some enhancements from [civ2patch project](https://github.com/vinceho/civ2patch) included:
 - reducing CPU usage when the application is idle

and patches that affect some game rules and limitations:
 - AI hostility
 - Retirement year
 - Population limit
 - Gold limit
 - Map size limit

All features can be switched in 'Options...' dialog.

## Requirements
Game version Multiplayer Gold Edition 5.4.0f (Patch 3) is supported only.

## Using
 1. Unzip files `Civ2UIALauncher.exe` and `Civ2UIA.dll` to game's folder
 2. Run `Civ2UIALauncher.exe`
 3. Click 'Play'

The launcher will search for `CIV2.EXE` and `Civ2UIA.dll` in its current folder and try to set all paths 
automatically.
You can create shortcut to start game immediately. All selected paths are saved in shortcut.

[Download](https://github.com/FoxAhead/Civ2-UI-Additions/releases)

[CivFanatics topic](https://forums.civfanatics.com/threads/623515/)
