-----------------------------------
-- Voracious Trunk
-- Steal one effect
-----------------------------------
local mobskillObject = {}

mobskillObject.onMobSkillCheck = function(target, mob, skill)
    return 0
end

mobskillObject.onMobWeaponSkill = function(target, mob, skill)
    skill:setMsg(xi.mobskills.mobDrainStatusEffectMove(mob, target))

    return 1
end

return mobskillObject
