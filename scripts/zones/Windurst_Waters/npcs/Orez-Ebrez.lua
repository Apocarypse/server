-----------------------------------
-- Area: Windurst Waters
--  NPC: Orez-Ebrez
-- Standard Merchant NPC
-- Confirmed shop stock, August 2013
-----------------------------------
local ID = zones[xi.zone.WINDURST_WATERS]
-----------------------------------
local entity = {}

entity.onTrade = function(player, npc, trade)
end

entity.onTrigger = function(player, npc)
    player:showText(npc, ID.text.OREZEBREZ_SHOP_DIALOG)

    local stock =
    {
        12466, 20000, 1, -- Red Cap
        12458,  8972, 1, -- Soil Hachimaki
        12455,  7026, 1, -- Beetle Mask
        12472,   144, 2, -- Circlet
        12465,  8024, 2, -- Cotton Headgear
        12440,   396, 2, -- Leather Bandana
        12473,  1863, 2, -- Poet's Circlet
        12499, 14400, 2, -- Flax Headband
        12457,  3272, 2, -- Cotton Hachimaki
        12474, 10924, 2, -- Wool Hat
        12464,  1742, 3, -- Headgear
        12456,   552, 3, -- Hachimaki
        12498,  1800, 3, -- Cotton Headband
        12448,   151, 3, -- Bronze Cap
        12449,  1471, 3, -- Brass Cap
        12543,   690, 3, -- Windshear Hat
    }

    xi.shop.nation(player, stock, xi.nation.WINDURST)
end

entity.onEventUpdate = function(player, csid, option, npc)
end

entity.onEventFinish = function(player, csid, option, npc)
end

return entity
