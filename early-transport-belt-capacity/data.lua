-- local logistics = data.raw.technology["logistics"]
-- if logistics and logistics.effects then
--   table.insert(logistics.effects, {
--     type = "belt-stack-size-bonus",
--     modifier = 1
--   })
-- end

local logistics2 = data.raw.technology["logistics-2"]
if logistics2 and logistics2.effects then
  table.insert(logistics2.effects, {
    type = "belt-stack-size-bonus",
    modifier = 1
  })
end

local logistics3 = data.raw.technology["logistics-3"]
if logistics3 and logistics3.effects then
  table.insert(logistics3.effects, {
    type = "belt-stack-size-bonus",
    modifier = 2
  })
end

-- local turbo_transport_belt = data.raw.technology["turbo-transport-belt"]
-- if turbo_transport_belt and turbo_transport_belt.effects then
--   table.insert(turbo_transport_belt.effects, {
--     type = "belt-stack-size-bonus",
--     modifier = 1
--   })
-- end

local transport_belt_capacity_1 = data.raw.technology["transport-belt-capacity-1"]
if transport_belt_capacity_1 then
  transport_belt_capacity_1.enabled = false
  transport_belt_capacity_1.hidden = true
end

local transport_belt_capacity_2 = data.raw.technology["transport-belt-capacity-2"]
if transport_belt_capacity_2 then
  transport_belt_capacity_2.enabled = false
  transport_belt_capacity_2.hidden = true
end

local tech = data.raw.technology["stack-inserter"]
if tech and tech.effects then
  for i = #tech.effects, 1, -1 do
    if tech.effects[i].type == "belt-stack-size-bonus" then
      table.remove(tech.effects, i)
    end
  end
end
