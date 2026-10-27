local script_inputs = "{ inputs { item 1 tags[base:hammer;base:clubhammer;base:mallet] mode:keep flags[Prop1;MayDegradeLight], item 1 [Base.HuntingKnifeBlade;Base.CrudeShortSwordBlade;Base.CrudeSwordBlade;Base.CrudeSwordBlade_Broken;Base.HandScytheBlade;Base.KitchenKnifeBlade;Base.LargeKnifeBlade;Base.MacheteBlade;Base.MeatCleaverBlade;Base.SwordBlade;Base.SwordBlade_Broken;Base.ShortSwordBlade;Base.Katana_Blade] flags[Prop2;InheritCondition;InheritSharpness] mappers[BladeMapper], item 1 [Base.SmallHandle], } }"

local script_outputs = "{ outputs { item 1 mapper:BladeMapper, } }"

local script_item_mapper = "{itemMapper BladeMapper { Base.CrudeShortSword = Base.CrudeShortSwordBlade, Base.CrudeSword = Base.CrudeSwordBlade, Base.CrudeSword_Broken = Base.CrudeSwordBlade_Broken, Base.HandScytheForged = Base.HandScytheBlade, Base.HuntingKnifeForged = Base.HuntingKnifeBlade, Base.KatanaForged = Base.Katana_Blade, Base.KitchenKnifeForged = Base.KitchenKnifeBlade, Base.LargeKnife = Base.LargeKnifeBlade, Base.MacheteForged = Base.MacheteBlade, Base.MeatCleaverForged = Base.MeatCleaverBlade, Base.ShortSword = Base.ShortSwordBlade, Base.Sword = Base.SwordBlade, Base.Sword_Broken = Base.SwordBlade_Broken, default = Base.HuntingKnifeForged, } }"

local script_recipe_name = "AssembleBlade"
local recipe = getScriptManager():getCraftRecipe(script_recipe_name)
recipe:getInputs():clear()
recipe:Load(script_recipe_name, script_inputs)
recipe:getOutputs():clear()
recipe:Load(script_recipe_name, script_outputs)
recipe:Load(script_recipe_name, script_item_mapper)