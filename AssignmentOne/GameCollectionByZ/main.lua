-----------------------------------------------------------------------------------------
--
-- main.lua
-- Created by Zoltan Debre
-- 
-- 1. Hide Status Bar
-- 2. Creating Storyboard object.
-- 3. Load first screen: menu.lua
-- 4. Launch background music
-- 5. Setup tapSound
--
-----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar( display.HiddenStatusBar )

local storyboard = require "storyboard"

--Activate multi-touch so we can press multiple buttons at once.
system.activate("multitouch")

-- Add any objects that should appear on all scenes below (e.g. tab bar, hud, etc.):

-- Create a constantly looping background sound...
local bgSound = audio.loadStream("sounds/EyeOfTheTiger.mp3")
audio.reserveChannels(1)   --Reserve its channel
audio.play(bgSound, {channel=1, loops=-1}) --Start looping the sound.

-- Load tapSound for buttons, it stay global
tapSound = audio.loadSound("sounds/tapsound.wav")

-- Sound ON/OFF status, need a global variable for store that to manage properly in each screen
audioPaused = false
soundButton = {}

-- load menu.lua
storyboard.gotoScene( "menu" )