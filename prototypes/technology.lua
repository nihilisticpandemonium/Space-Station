local planetToSpaceTransportation = table.deepcopy(data.raw.technology["rocket-silo"])
local updates = {
   name = "planet-to-space-transportation",
   effects = {
      {
	 type = "unlock-recipe",
	 recipe = "space-elevator",
      },
      {
	 type = "unlock-recipe",
	 recipe = "space-station-tile",
      },
      {
	 type = "unlock-recipe",
	 recipe = "space-tile",
      },
      {
	 type = "unlock-recipe",
	 recipe = "space-energy-input",
      },
      {
	 type = "unlock-recipe",
	 recipe = "space-energy-output",
      },
      {
	 type = "unlock-recipe",
	 recipe = "space-pipe",
      },
   },
   prerequisites = { "rocket-silo" },
   unit = {
      count = 1000,
      ingredients = {
	 {"automation-science-pack", 1},
	 {"logistic-science-pack", 1},
	 {"chemical-science-pack", 1},
	 {"military-science-pack", 1},
	 {"production-science-pack", 1},
	 {"utility-science-pack", 1},
	 {"space-science-pack", 1},
      },
      time = 60,
   },
   order = "k-b",
}

for k,v in pairs(updates) do
   planetToSpaceTransportation[k] = updates[k]
end

local spaceAutomation = {
   type = "technology",
   name = "space-automation",
   icon = "__tater_spacestation__/graphics/space_assembling_machine/space-assembling-machine-icon.png",
   icon_size = 32,
   effects = {
      {
	 type = "unlock-recipe",
	 recipe = "space-assembling-machine",
      },
      {
	 type = "unlock-recipe",
	 recipe = "space-science",
      },
   },
   prerequisites = {
      "planet-to-space-transportation",
      "automation-3",
   },
   unit = {
      count = 200,
      ingredients = {
	 {"automation-science-pack", 1},
	 {"logistic-science-pack", 1},
	 {"chemical-science-pack", 1},
	 {"production-science-pack", 1},
      },
      time = 20,
   },
   order = "k-c",
}

data:extend{
   planetToSpaceTransportation,
   spaceAutomation,
}

