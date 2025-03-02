-----------------------------------
-- Area: Bastok Markets
--  NPC: Moogle
-- Type: Special Events Redemption Moogle
-----------------------------------
local ID = require("scripts/zones/Bastok_Markets/IDs")
require("scripts/globals/settings")
require("scripts/globals/status")
require("scripts/globals/events/starlight_celebrations")
require("scripts/globals/utils")
require("scripts/globals/npc_util")
-----------------------------------

local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    if xi.events.starlightCelebration.isStarlightEnabled() ~= 0 then
        xi.events.starlightCelebration.tokenMoogleOnTrigger(player)
    end
end

entity.onEventUpdate = function(player, csid, option)
end

entity.onEventFinish = function(player, csid, option)
    if xi.events.starlightCelebration.isStarlightEnabled() ~= 0 then
        xi.events.starlightCelebration.tokenMoogleOnFinish(player, ID, csid, option)
    end
end

return entity
