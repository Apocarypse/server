-----------------------------------
-- ID: 4227
-- Item: Bronze Bolt Quiver
-- When used, you will obtain one stack of Bronze Bolts
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.itemBoxOnItemCheck(target)
end

itemObject.onItemUse = function(target)
    npcUtil.giveItem(target, { { xi.item.BRONZE_BOLT, 99 } })
end

return itemObject
