--
--------------------------------------------------------------------------------
--         FILE:  Vector2.lua
--        USAGE:  ./Vector2.lua 
--  DESCRIPTION:  
--      OPTIONS:  ---
-- REQUIREMENTS:  ---
--         BUGS:  ---
--        NOTES:  ---
--       AUTHOR:   (), <>
--      COMPANY:  
--      VERSION:  1.0
--      CREATED:  08/14/2011 22:09:43 CST
--     REVISION:  ---
--------------------------------------------------------------------------------
--

require "class"

Vector2 = class()

function Vector2:init( x, y )
	self.x = x
	self.y = y
end

function Vector2:add( vec2 )
	self.x = self.x + vec2.x
	self.y = self.y + vec2.y
end

--TODO: add more functions for Vector2
