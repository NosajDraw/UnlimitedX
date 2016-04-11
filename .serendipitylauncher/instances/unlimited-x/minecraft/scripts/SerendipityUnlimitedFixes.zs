#Ore Dictionary Removal
#BoP Flesh Block OD entry Removal to prevent exploit with MRF Meat Block crafting into 9 meat ingots
val entry = <ore:blockMeatRaw>;
entry.remove(<BiomesOPlenty:flesh>);

#Recipe Conflicts
recipes.remove(<ComputerCraft:CC-Cable:1>);
recipes.addShaped(<ComputerCraft:CC-Cable:1>, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:redstone_block>, <minecraft:stone>],
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]
]);

recipes.addShaped(<guideapi:ItemGuideBook>, [
	[<minecraft:book>, <minecraft:porkchop>, null],
	[null, null, null],
	[null, null, null]
]);

// Fix iron door exploit
recipes.remove(<minecraft:iron_door>);
recipes.addShaped(<minecraft:iron_door>, [
	[<ore:ingotIron>, <ore:ingotIron>, null],
	[<ore:ingotIron>, <ore:ingotIron>, null],
	[<ore:ingotIron>, <ore:ingotIron>, null]
]);

//Charcoal Block Conflict
recipes.remove(<DCsAppleMilk:defeatedcrow.Charcoalcontainer>);

//Pink Slime/Et Furuturm Slime Conflict
recipes.remove(<etfuturum:slime>);
recipes.addShaped(<etfuturum:slime>, [
	[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>], 
	[<ore:slimeball>, null, <ore:slimeball>], 
	[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>]
]);
