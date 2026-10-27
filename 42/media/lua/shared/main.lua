local script = "{ inputs { item 1 tags[base:hammer;base:clubhammer;base:mallet] mode:keep flags[Prop1;MayDegradeLight], item 1 [Base.HuntingKnifeBlade;Base.CrudeShortSwordBlade;Base.CrudeSwordBlade;Base.CrudeSwordBlade_Broken;Base.HandScytheBlade;Base.KitchenKnifeBlade;Base.LargeKnifeBlade;Base.MacheteBlade;Base.MeatCleaverBlade;Base.SwordBlade;Base.SwordBlade_Broken;Base.ShortSwordBlade;Base.Katana_Blade] flags[Prop2;InheritCondition;InheritSharpness] mappers[ThingMapper], item 1 [Base.SmallHandle], } }"

local recipe = getScriptManager():getCraftRecipe("AssembleBlade")
recipe:getInputs():clear()
recipe:Load("AssembleBlade", script)