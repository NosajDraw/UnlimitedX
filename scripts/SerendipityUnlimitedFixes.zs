print("SerendipityUnlimitedFixes START");

// **********************************
// Recipe Fixes

// Biomes O'Plenty Flesh - Exploit with Meat Ingots
val Meat = <ore:blockMeatRaw>;
Meat.remove(<BiomesOPlenty:flesh>); 

// Sanguine Scientiem (Blood Magic Guide) - No default recipe
recipes.addShapeless(<guideapi:ItemGuideBook>, 
        [<minecraft:book>, <AWWayofTime:sacrificialKnife>]
);

// Charcoal Container - Conflict between Charcoal Container + Charcoal Block
recipes.remove(<DCsAppleMilk:defeatedcrow.Charcoalcontainer>);
recipes.addShaped(<DCsAppleMilk:defeatedcrow.Charcoalcontainer>, [
        [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
        [<minecraft:coal:1>, <minecraft:coal:1>, <minecraft:coal:1>],
        [<minecraft:stone>, <minecraft:stone>, <minecraft:stone>]     
]);
recipes.removeShapeless(<minecraft:coal:1>, 
        [<DCsAppleMilk:defeatedcrow.Charcoalcontainer>]
);
recipes.addShapeless(<minecraft:coal:1> * 6,
        [<DCsAppleMilk:defeatedcrow.Charcoalcontainer>]
);

// Slime Block - Conflict between Pink Slime Block (MFR) + Slime Block (Et Futurum)
recipes.remove(<etfuturum:slime>);
recipes.addShaped(<etfuturum:slime>, [
	[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>], 
	[<ore:slimeball>, null, <ore:slimeball>], 
	[<ore:slimeball>, <ore:slimeball>, <ore:slimeball>]
]);
