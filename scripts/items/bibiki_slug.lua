-----------------------------------
-- ID: 5122
-- Item: Bibiki Slug
-- Food Effect: 5Min, Mithra only
-----------------------------------
-- Dexterity -5
-- Vitality 4
-- defense % 16
-----------------------------------
local itemObject = {}

itemObject.onItemCheck = function(target, item, param, caster)
    return xi.itemUtils.foodOnItemCheck(target, xi.foodType.RAW_FISH)
end

itemObject.onItemUse = function(target)
    target:addStatusEffect(xi.effect.FOOD, 0, 0, 300, 5122)
end

itemObject.onEffectGain = function(target, effect)
    target:addMod(xi.mod.DEX, -5)
    target:addMod(xi.mod.VIT, 4)
    target:addMod(xi.mod.DEFP, 16)
end

itemObject.onEffectLose = function(target, effect)
    target:delMod(xi.mod.DEX, -5)
    target:delMod(xi.mod.VIT, 4)
    target:delMod(xi.mod.DEFP, 16)
end

return itemObject
