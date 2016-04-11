print("MetallurgyInt START");

val Adamantine = <ore:ingotAdamantine>;		// Overworld, 0.40%
val alduorite = <ore:ingotalduorite>;		// Nether
val Amordrine = <ore:ingotAmordrine>;		// No apparent source
val Angmallen = <ore:ingotAngmallen>;		// Iron & Gold alloy
val AstralSilver = <ore:ingotAstralSilver>;	// Overworld, 0.12%	
val Atlarus = <ore:ingotAtlarus>;		// Overworld, 0.04%
val BlackSteel = <ore:ingotBlackSteel>;		// Infuscolium & DeepIron alloy
val Carmot = <ore:ingotCarmot>;			// Overworld, 0.10%
val Celenegil = <ore:ingotCelenegil>;		// No apparent source
val Ceruclase = <ore:ingotCeruclase>;		// Nether
val DamascusSteel = <ore:ingotDamascusSteel>;	// Bronze & Iron alloy	
val DeepIron = <ore:ingotDeepIron>;		// Overworld, 0.79%
val Eximite = <ore:ingotEximite>;		// End
val Haderoth = <ore:ingotHaderoth>;		// Mithril & Rubracium alloy
val Hepatizon = <ore:ingotHepatizon>;		// Bronze & Gold alloy
val Ignatius = <ore:ingotIgnatius>;		// Nether
val Infuscolium = <ore:ingotInfuscolium>;	// Overworld, 0.79%	
val Inolashite = <ore:ingotInolashite>;		// alduorite & Ceruclase alloy
val Kalendrite = <ore:ingotKalendrite>;		// Nether	
val Lemurite = <ore:ingotLemurite>;		// Nether
val Manganese = <ore:ingotManganese>;		// Overworld, 0.80%
val Meutoite = <ore:ingotMeutoite>;		// End
val Midasium = <ore:ingotMidasium>;		// Nether
val Mithril = <ore:ingotMithril>;		// Overworld, 0.10%
val Orichalcum = <ore:ingotOrichalcum>;		// Overworld, 0.39%	
val Oureclase = <ore:ingotOureclase>;		// Overworld, 0.13%
val Platinum = <ore:ingotPlatinum>;		// No apparent source
val Prometheum = <ore:ingotPrometheum>;		// Overworld, 1.30%
val Quicksilver = <ore:ingotQuicksilver>;	// No apparent source
val Rubracium = <ore:ingotRubracium>;		// Overworld, 0.07%
val Sanguinite = <ore:ingotSanguinite>;		// Nether	
val ShadowIron = <ore:ingotShadowIron>;		// Nether	
val ShadowSteel = <ore:ingotShadowSteel>;	// ShadowIron & Lemurite alloy	
val Tartarite = <ore:ingotTartarite>;		// No apparent source
val Vulcanite = <ore:ingotVulcanite>;		// Nether
val Vyroxeres = <ore:ingotVyroxeres>;		// Nether

// For comparison Iron 13%, Tin 6.3%, Copper 5.1%, Gold 2.0%, Diamond 0.58%

// **********************************
// Ore dictionary stuff

val poorGems = <ore:poorGems>;			// Make a single oreDictionary entry for all the lesser used gems
poorGems.addAll(<ore:gemAmber>);
poorGems.addAll(<ore:gemSapphire>);
poorGems.addAll(<ore:gemPeridot>);
poorGems.addAll(<ore:gemRuby>);

// val metallurgyTeirOne = <ore:metallurgyTeirOne>;

val metallurgyTeirTwo = <ore:metallurgyTeirTwo>;
metallurgyTeirTwo.addAll(Lemurite);
metallurgyTeirTwo.addAll(Prometheum);
metallurgyTeirTwo.addAll(DeepIron);
metallurgyTeirTwo.addAll(Infuscolium);
metallurgyTeirTwo.addAll(Ignatius);
metallurgyTeirTwo.addAll(ShadowIron);

// val metallurgyTeirThree = <ore:metallurgyTeirThree>;
// val metallurgyTeirFour = <ore:metallurgyTeirFour>;
// val metallurgyTeirFive = <ore:metallurgyTeirFive>;

val metallurgyTeirSix = <ore:metallurgyTeirSix>;
metallurgyTeirSix.addAll(Vulcanite);
metallurgyTeirSix.addAll(Sanguinite);
metallurgyTeirSix.addAll(Orichalcum);
metallurgyTeirSix.addAll(Celenegil);
metallurgyTeirSix.addAll(Adamantine);
metallurgyTeirSix.addAll(Atlarus);
metallurgyTeirSix.addAll(Tartarite);

// val metallurgyIngots = <ore:metallurgyIngots>;

// Make silicons equal
<ore:itemSilicon>.add(<ProjRed|Core:projectred.core.part:12>);

// Make lapis nuggest and shards the same thing
// <ore:nuggetsLapis>.addAll(<ore:shardLapis>);
// <ore:shardLapis>.mirror(<ore:nuggetsLapis>);

// Make oreDict for certus quartz crystals
val aeCertusQuartz = <ore:aeCertusQuartz>;
aeCertusQuartz.add(<appliedenergistics2:item.ItemMultiMaterial>);
aeCertusQuartz.add(<appliedenergistics2:item.ItemMultiMaterial:1>);
aeCertusQuartz.add(<appliedenergistics2:item.ItemMultiMaterial:10>);

//  Gradwell - 185372

// **********************************
// Shards

recipes.remove(<Shards:mixedGems>);
recipes.addShaped(<Shards:mixedGems>, [
	[<ore:gemAmber>, <ore:gemSapphire>, <ore:gemAmber>],
	[<ore:gemRuby>, <ore:gemPeridot>, <ore:gemRuby>],
	[<ore:gemAmber>, <ore:gemSapphire>, <ore:gemAmber>]
]);
recipes.addShaped(<Shards:mixedGems>, [
	[null, poorGems, null],
	[poorGems, <ore:gemDiamond>, poorGems],
	[null, poorGems, null]
]);
// Shimering Shard / Mining blade I
recipes.remove(<Shards:shimmeringShard>);
mods.buildcraft.AssemblyTable.addRecipe(<Shards:shimmeringShard>,
	7500000,
	[<ore:blockDeepIron>,
	<Metallurgy:inolashite.pickaxe>,
	<Metallurgy:kalendrite.pickaxe>,
	<Metallurgy:astral.silver.pickaxe>,
	<Metallurgy:carmot.pickaxe>,
	<Metallurgy:mithril.pickaxe>
]);

<Shards:shimmeringShard>.displayName = "Mining blade I";
// Scintilating Shard / Mining blade II
recipes.remove(<Shards:scintillatingShard>);
mods.buildcraft.AssemblyTable.addRecipe(<Shards:scintillatingShard>, 
	7500000,
	[<ore:blockBlackSteel>,
	<Metallurgy:vulcanite.pickaxe>,
	<Metallurgy:sanguinite.pickaxe>,
	<Metallurgy:orichalcum.pickaxe>,
	<Metallurgy:adamantine.pickaxe>,
	<Metallurgy:atlarus.pickaxe>
]);
<Shards:scintillatingShard>.displayName = "Mining blade II";

// **********************************
// Minecraft

// Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:cobblestone>, metallurgyTeirTwo, <ore:cobblestone>],
	[<ore:cobblestone>, <ore:dustRedstone>, <ore:cobblestone>]
]);
recipes.addShaped(<minecraft:piston>, [
	[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
	[<ore:cobblestone>, <ore:ingotAluminum>, <ore:cobblestone>],
	[<ore:cobblestone>, <ore:blockRedstone>, <ore:cobblestone>]
]);

// **********************************
// EnderIO

// Machine Chasis
recipes.remove(<EnderIO:itemMachinePart>);
recipes.addShaped(<EnderIO:itemMachinePart>, [
	[<minecraft:iron_bars>, DamascusSteel, <minecraft:iron_bars>],
	[DamascusSteel, <EnderIO:itemBasicCapacitor>, DamascusSteel],
	[<minecraft:iron_bars>, DamascusSteel, <minecraft:iron_bars>]
]);
// Wireless Charger
recipes.remove(<EnderIO:blockWirelessCharger>);
recipes.addShaped(<EnderIO:blockWirelessCharger>, [
	[DamascusSteel, DamascusSteel, DamascusSteel],
	[<ore:ingotElectricalSteel>, <EnderIO:itemFrankenSkull:3>, <ore:ingotElectricalSteel>],
	[<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotElectricalSteel>]
]);
// Dimensional Transceiver
recipes.remove(<EnderIO:blockTransceiver>);
recipes.addShaped(<EnderIO:blockTransceiver>, [
	[AstralSilver, <EnderIO:itemFrankenSkull:3>, AstralSilver],
	[<EnderIO:blockFusedQuartz>, <ore:itemEnderCrystal>, <EnderIO:blockFusedQuartz>],
	[<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotElectricalSteel>]
]);
recipes.addShaped(<EnderIO:blockTransceiver>, [
	[Carmot, <EnderIO:itemFrankenSkull:3>, Carmot],
	[<EnderIO:blockFusedQuartz>, <ore:itemEnderCrystal>, <EnderIO:blockFusedQuartz>],
	[<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotElectricalSteel>]
]);
recipes.addShaped(<EnderIO:blockTransceiver>, [
	[Mithril, <EnderIO:itemFrankenSkull:3>, Mithril],
	[<EnderIO:blockFusedQuartz>, <ore:itemEnderCrystal>, <EnderIO:blockFusedQuartz>],
	[<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotElectricalSteel>]
]);
recipes.addShaped(<EnderIO:blockTransceiver>, [
	[Oureclase, <EnderIO:itemFrankenSkull:3>, Oureclase],
	[<EnderIO:blockFusedQuartz>, <ore:itemEnderCrystal>, <EnderIO:blockFusedQuartz>],
	[<ore:ingotElectricalSteel>, <EnderIO:itemBasicCapacitor:2>, <ore:ingotElectricalSteel>]
]);

// **********************************
// Thermal Expansion

// Machine Frame (Basic)
recipes.remove(<ThermalExpansion:Frame>);
recipes.addShaped(<ThermalExpansion:Frame>, [
	[DamascusSteel, <ore:blockGlass>, DamascusSteel],
	[<ore:blockGlass>, <ore:gearTin>, <ore:blockGlass>],
	[DamascusSteel, <ore:blockGlass>, DamascusSteel]
]);
// Tesseract Frame (Empty)
recipes.remove(<ThermalExpansion:Frame:10>);
recipes.addShaped(<ThermalExpansion:Frame:10>, [
	[AstralSilver, <ore:blockGlassHardened>, AstralSilver],
	[<ore:blockGlassHardened>, <Shards:mixedGems>, <ore:blockGlassHardened>],
	[<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>]
]);
recipes.addShaped(<ThermalExpansion:Frame:10>, [
	[Carmot, <ore:blockGlassHardened>, Carmot],
	[<ore:blockGlassHardened>, <Shards:mixedGems>, <ore:blockGlassHardened>],
	[<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>]
]);
recipes.addShaped(<ThermalExpansion:Frame:10>, [
	[Mithril, <ore:blockGlassHardened>, Mithril],
	[<ore:blockGlassHardened>, <Shards:mixedGems>, <ore:blockGlassHardened>],
	[<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>]
]);
recipes.addShaped(<ThermalExpansion:Frame:10>, [
	[Oureclase, <ore:blockGlassHardened>, Oureclase],
	[<ore:blockGlassHardened>, <Shards:mixedGems>, <ore:blockGlassHardened>],
	[<ore:ingotEnderium>, <ore:blockGlassHardened>, <ore:ingotEnderium>]
]);
// Machine Frame (Resonant)
recipes.remove(<ThermalExpansion:Frame:3>);
recipes.addShaped(<ThermalExpansion:Frame:3>, [
	[Prometheum, <ore:gearEnderium>, <ore:ingotSilver>],
	[null, <ThermalExpansion:Frame:2>, null],
	[<ore:ingotSilver>, null, Prometheum]
]);
// Leadstone flux capacitor
recipes.remove(<ThermalExpansion:capacitor:2>);
recipes.addShaped(<ThermalExpansion:capacitor:2>.withTag({Energy: 0}), [
	[DamascusSteel, <ore:dustRedstone>, DamascusSteel],
	[<ore:ingotLead>, <ore:ingotCopper>, <ore:ingotLead>],
	[<ore:dustRedstone>, <ore:dustSulfur>, <ore:dustRedstone>]
]);
recipes.addShaped(<ThermalExpansion:capacitor:2>.withTag({Energy: 0}), [
	[DamascusSteel, <ore:dustRedstone>, DamascusSteel],
	[<ore:ingotLead>, <ore:ingotCopper>, <ore:ingotLead>],
	[<ore:dustRedstone>, <ore:blockElectrotine>, <ore:dustRedstone>]
]);
// Leadstone energy cell frame
recipes.remove(<ThermalExpansion:Frame:4>);
recipes.addShaped(<ThermalExpansion:Frame:4>, [
	[<ore:ingotLead>, <ore:blockGlass>, DamascusSteel],
	[<ore:blockElectrotine>, <minecraft:redstone_block:*>, <ore:blockElectrotine>],
	[DamascusSteel, <ore:blockGlass>, <ore:ingotLead>]
]);
// Redstone Energy Cell Frame (empty);
recipes.remove(<ThermalExpansion:Frame:6>);
recipes.addShaped(<ThermalExpansion:Frame:6>, [
	[<ore:ingotElectrum>, <ore:blockGlassHardened>, <ore:ingotElectrum>], 
	[<ore:blockGlassHardened>, <Shards:mixedGems>, <ore:blockGlassHardened>],
	[<ore:ingotElectrum>, <ore:blockGlassHardened>, <ore:ingotElectrum>]
]);

// **********************************
// IC2

// Basic Machine Casing
recipes.remove(<IC2:blockMachine>);
recipes.addShaped(<IC2:blockMachine>, [
	[<ore:plateIron>, <ore:plateIron>, DamascusSteel],
	[<ore:plateIron>, DamascusSteel, <ore:plateIron>],
	[DamascusSteel, <ore:plateIron>, <ore:plateIron>]
]);
// Allow AOBD Iridium to work
recipes.removeShaped(<IC2:itemOreIridium>);
recipes.addShaped(<IC2:itemOreIridium>, [
	[<aobd:nuggetIridium>, <aobd:nuggetIridium>, <aobd:nuggetIridium>],
	[<aobd:nuggetIridium>, <Shards:mixedGems>, <aobd:nuggetIridium>],
	[<aobd:nuggetIridium>, <aobd:nuggetIridium>, <aobd:nuggetIridium>]
]);

// **********************************
// Extra Utilities

// Ender Quarry
recipes.remove(<ExtraUtilities:enderQuarry>);
recipes.addShaped(<ExtraUtilities:enderQuarry>, [
	[<ExtraUtilities:decorativeBlock1:1>, <BuildCraft|Builders:machineBlock>, <ExtraUtilities:decorativeBlock1:1>],
	[<ExtraUtilities:decorativeBlock1:11>, <ExtraUtilities:decorativeBlock1:12>, <ExtraUtilities:decorativeBlock1:11>],
	[<ExtraUtilities:enderThermicPump:*>, <Shards:scintillatingShard>, <ExtraUtilities:enderThermicPump:*>]
]);

// **********************************
// Buildcraft

// BC Quarry
recipes.remove(<BuildCraft|Builders:machineBlock>);
recipes.addShaped(<BuildCraft|Builders:machineBlock>, [
	[<ore:gearIron>, <ore:dustRedstone>, <ore:gearIron>],
	[<ore:gearGold>, <ore:gearIron>, <ore:gearGold>],
	[<ore:gearDiamond>, <Shards:shimmeringShard>, <ore:gearDiamond>]
]);

// **********************************
// Big Reactors

// Reactor casing
recipes.remove(<BigReactors:BRReactorPart>);
recipes.addShaped(<BigReactors:BRReactorPart>, [
	[DamascusSteel, <ore:ingotGraphite>, DamascusSteel],
	[<ore:ingotGraphite>, <ore:ingotYellorium>, <ore:ingotGraphite>],
	[DamascusSteel, <ore:ingotGraphite>, DamascusSteel]
]);
// Turbine housing
recipes.remove(<BigReactors:BRTurbinePart>);
recipes.addShaped(<BigReactors:BRTurbinePart>, [
	[DamascusSteel, <ore:ingotGraphite>, DamascusSteel],
	[<minecraft:quartz>, <ore:ingotCyanite>, <minecraft:quartz>],
	[DamascusSteel, <ore:ingotGraphite>, DamascusSteel]
]);
// Reactor Controller
recipes.remove(<BigReactors:BRReactorPart:1>);
recipes.addShaped(<BigReactors:BRReactorPart:1>, [
	[<ore:reactorCasing>, Carmot, <ore:reactorCasing>],
	[<ore:ingotYellorium>, <Shards:mixedGems>, <ore:ingotYellorium>],
	[<ore:reactorCasing>, <ore:blockElectrotine>, <ore:reactorCasing>]
]);
// Turbine Controller
recipes.remove(<BigReactors:BRTurbinePart:1>);
recipes.addShaped(<BigReactors:BRTurbinePart:1>, [
	[<ore:turbineHousing>, Mithril, <ore:turbineHousing>],
	[<ore:ingotBlutonium>, <Shards:mixedGems>, <ore:ingotBlutonium>],
	[<ore:turbineHousing>, <ore:blockElectrotine>, <ore:turbineHousing>]
]);

// **********************************
// Advanced Generators

// Control circuit
recipes.remove(<advgenerators:Controller>);
recipes.addShaped(<advgenerators:Controller>, [
	[DamascusSteel, <ore:dustElectrotine>, DamascusSteel],
	[<minecraft:redstone:*>, <minecraft:quartz:*>, <minecraft:redstone:*>],
	[DamascusSteel, <ore:dustElectrotine>, DamascusSteel]
]);
// Iron Tubing
recipes.remove(<advgenerators:IronTubing>);
recipes.addShaped(<advgenerators:IronTubing>, [
	[DamascusSteel, null, null],
	[null, <ore:stickWood>, null],
	[null, null, <minecraft:iron_ingot:*>]
]);
// Iron Restone Tubing
recipes.remove(<advgenerators:IronWiring>);
recipes.addShaped(<advgenerators:IronWiring>, [
	[DamascusSteel, <ore:dustElectrotine>, null],
	[<minecraft:redstone:*>, <ore:stickWood>, <minecraft:redstone:*>],
	[null, <ore:dustElectrotine>, <minecraft:iron_ingot:*>]
]);

// **********************************
// Applied Energistics

val aeCalculation = <appliedenergistics2:item.ItemMultiMaterial:23>;
val aeLogic = <appliedenergistics2:item.ItemMultiMaterial:22>;
val aeEngineering = <appliedenergistics2:item.ItemMultiMaterial:24>;
val aeGlassWire = <appliedenergistics2:item.ItemMultiPart:16>;
val aeOneKChip = <appliedenergistics2:item.ItemMultiMaterial:35>;
val aePureFluixCrystal = <appliedenergistics2:item.ItemMultiMaterial:12>;
val aeSkyStone = <appliedenergistics2:tile.BlockSkyStone>;

// ME Controller
recipes.remove(<appliedenergistics2:tile.BlockController>);
recipes.addShaped(<appliedenergistics2:tile.BlockController>, [
	[metallurgyTeirSix, aePureFluixCrystal, aeSkyStone],
	[aePureFluixCrystal, aeEngineering, aePureFluixCrystal],
	[aeSkyStone, aePureFluixCrystal, metallurgyTeirSix]
]);
// Crafting unit
recipes.remove(<appliedenergistics2:tile.BlockCraftingUnit>);
recipes.addShaped(<appliedenergistics2:tile.BlockCraftingUnit>, [
	[DamascusSteel, aeCalculation, DamascusSteel],
	[aeGlassWire, aeLogic, aeGlassWire],
	[DamascusSteel, aeCalculation, DamascusSteel]
]);
// 1K ME Storage Component
recipes.remove(aeOneKChip);
recipes.addShaped(aeOneKChip, [
	[<ore:dustElectrotine>, aeCertusQuartz, <minecraft:redstone:*>],
	[aeCertusQuartz, aeLogic, aeCertusQuartz],
	[<minecraft:redstone:*>, aeCertusQuartz, <ore:dustElectrotine>]
]);

// **********************************
// Immersive Engineering

// Iron Mechanical Component
recipes.remove(<ImmersiveEngineering:material:11>);
recipes.addShaped(<ImmersiveEngineering:material:11>, [
	[DeepIron, null, <ore:ingotIron>],
	[null, DamascusSteel, null],
	[<ore:ingotIron>, null, DeepIron]
]);
// Steel Mechanical component
recipes.remove(<ImmersiveEngineering:material:12>);
recipes.addShaped(<ImmersiveEngineering:material:12>, [
	[BlackSteel, null, <ore:ingotSteel>],
	[null, DamascusSteel, null],
	[<ore:ingotSteel>, null, BlackSteel]
]);

// **********************************
// Portal Gun

// Portal Gun
recipes.removeShaped(<PortalGun:PortalGunBlue>);
recipes.addShaped(<PortalGun:PortalGunBlue>, [
	[<minecraft:obsidian:*>, BlackSteel, DamascusSteel],
	[<Shards:mixedGems>, <PortalGun:MiniBlackHole>, DeepIron],
	[DamascusSteel, <minecraft:obsidian:*>, DamascusSteel]
]);

// **********************************
// Storage Drawers

// Drawer Controller
recipes.remove(<StorageDrawers:controller>);
recipes.addShaped(<StorageDrawers:controller>, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:comparator>, <ore:drawerBasic>, <minecraft:comparator>],
	[aeSkyStone, <Shards:mixedGems>, aeSkyStone]
]);
// Drawer Controller Slave
recipes.remove(<StorageDrawers:controllerSlave>);
recipes.addShaped(<StorageDrawers:controllerSlave>, [
	[<minecraft:stone>, <minecraft:stone>, <minecraft:stone>],
	[<minecraft:comparator>, <ore:drawerBasic>, <minecraft:comparator>],
	[aeSkyStone, metallurgyTeirTwo, aeSkyStone]
]);
// Creative infinite storage upgrade - Deep Storage Upgrade
recipes.remove(<StorageDrawers:upgradeCreative>);
recipes.addShaped(<StorageDrawers:upgradeCreative> * 4, [
	[<StorageDrawers:upgradeTemplate>, <StorageDrawers:upgrade:6>, <StorageDrawers:upgradeTemplate>],
	[<StorageDrawers:upgrade:4>, <ThermalExpansion:Frame:8>, <StorageDrawers:upgrade:4>],
	[<StorageDrawers:upgradeTemplate>, <StorageDrawers:upgrade:5>, <StorageDrawers:upgradeTemplate>]
]);
recipes.addShaped(<StorageDrawers:upgradeCreative> * 4, [
	[<StorageDrawers:upgradeTemplate>, <StorageDrawers:upgrade:6>, <StorageDrawers:upgradeTemplate>],
	[<StorageDrawers:upgrade:4>, <EnderIO:blockTransceiver>, <StorageDrawers:upgrade:4>],
	[<StorageDrawers:upgradeTemplate>, <StorageDrawers:upgrade:5>, <StorageDrawers:upgradeTemplate>]
]);
<StorageDrawers:upgradeCreative>.displayName = "Deep Storage Upgrade";

// **********************************
// Gendustry

// Genetic Template
recipes.remove(<gendustry:GeneTemplate>);
recipes.addShaped(<gendustry:GeneTemplate>, [
	[<minecraft:redstone:*>, <ore:ingotTin>, <minecraft:redstone:*>],
	[<ore:ingotTin>, <Shards:mixedGems>, <ore:ingotTin>],
	[<minecraft:redstone:*>, <ore:ingotTin>, <minecraft:redstone:*>]
]);
// Labware
recipes.remove(<gendustry:Labware>);
recipes.addShaped(<gendustry:Labware>, [
	[<minecraft:glass_pane:*>, null, <minecraft:glass_pane:*>],
	[<minecraft:glass_pane:*>, null, <minecraft:glass_pane:*>],
	[null, <Shards:mixedGems>, null]
]);

// **********************************
// Pam's Harvest craft

// Sausepan - remove one it's recipes as it clashes with architects chisel from architecture craft
recipes.removeShaped(<harvestcraft:saucepanItem>, [[<ore:ingotIron>, null], [<ore:stickWood>, null]]);

// **********************************
// Solar Expandsion

// Photovoltic cell - alolow use of lapis niggest and shards
recipes.remove(<SolarExpansion:photovoltaicCell>);
recipes.addShaped(<SolarExpansion:photovoltaicCell>, [
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[<ore:nuggetsLapis>, <ore:nuggetsLapis>, <ore:nuggetsLapis>],
	[<ore:nuggetIron>, <ore:nuggetIron>, <ore:nuggetIron>]
]);



print("MetallurgyInt END");
