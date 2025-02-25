-----------------------------------
-- ID: 16071
-- Item: kawahori_kabuto
-- Effect: blindness
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return 0
end

itemObject.onItemUse = function(target)
    if not target:hasStatusEffect(xi.effect.BLINDNESS) then
        target:addStatusEffect(xi.effect.BLINDNESS, 25, 0, 180)
    else
        target:messageBasic(xi.msg.basic.NO_EFFECT)
    end
end

return itemObject
