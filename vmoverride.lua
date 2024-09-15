--[[
	Viewmodel Offset+Sway Override LUA
	Credits to GitHub user Xee45 for the original LUA https://github.com/Xee545/lmaobox-luas/blob/main/vmoverride.lua
	Viewmodel Offsets will not work with tf_use_min_viewmodels. This is hardcoded in TF2.
	
	You'll have to set the viewmodel overrides in this LUA yourself if you want to keep your changes. 
]]

local x = 0
local y = -10
local z = -7
local sway = 0
local interp = 0

local function override()

  client.RemoveConVarProtection( "tf_viewmodels_offset_override" )
  client.RemoveConVarProtection( "cl_wpn_sway_interp")
  client.RemoveConVarProtection( "cl_wpn_sway_scale") 
  client.SetConVar( "tf_viewmodels_offset_override", x .. " " .. y .. " " .. z )
  client.SetConVar( "cl_wpn_sway_scale", sway .. " " )
  client.SetConVar( "cl_wpn_sway_interp", interp .. " " )
  
end

override()
print("Viewmodel Override Loaded!")
engine.PlaySound("buttons/button3.wav")
