-----------------------------------
-- ID: 14855
-- Item: Mist Mitts
-- Item Effect: Evasion Boost
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return 0
end

itemObject.onItemUse = function(target)
    if not target:hasStatusEffect(xi.effect.EVASION_BOOST) then
        target:addStatusEffect(xi.effect.EVASION_BOOST, 15, 0, 180)
    else
        target:messageBasic(xi.msg.basic.NO_EFFECT)
    end
end

return itemObject
