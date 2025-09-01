local bombwave = table.deepcopy(data.raw.projectile["atomic-bomb-wave"])
local groundzero = table.deepcopy(data.raw.projectile["atomic-bomb-ground-zero-projectile"])
groundzero.name="groundzero"
bombwave.name="bombwave"
local rocket = table.deepcopy(data.raw.projectile["atomic-rocket"])
rocket.name="rocket"
data:extend({groundzero,bombwave})
rocket.action.action_delivery.target_effects[12].action.action_delivery.projectile = "groundzero"
rocket.action.action_delivery.target_effects[13].action.action_delivery.projectile = "bombwave"
data:extend({rocket})
data.raw["reactor"]["nuclear-reactor"].meltdown_action.action_delivery.target_effects[1].entity_name = "rocket"

data.raw.projectile["atomic-bomb-ground-zero-projectile"].action[1].force="not-same"
data.raw.projectile["atomic-bomb-wave"].action[1].force="not-same"
