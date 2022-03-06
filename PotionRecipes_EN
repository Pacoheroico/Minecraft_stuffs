//////////////////////////////////////// POTIONS RECIPES FILE /////////////////////////////////////////////////////

import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//NO MODS REQUIRED VERSION (Just "Potion Core" duh)
//Is required the script of potion update system
//NO requiere mods externos mas que "Potion core"
//Se requiere el script complemento del sistema de mejora de pociones 


//////////////////////////////////////////  VARIANTES - TYPES OF POTIONS    ///////////////////////////////////////////////////

//Pociones base -- no effects potions
val awkward_water = "minecraft:awkward";
val thick_water = "minecraft:thick";
val mundane_water = "minecraft:mundane";

//tipos de pociones -- types of potions
val potionTypes = 
{
    normal_potion: 	    <minecraft:potion>,
    splash_potion: 	    <minecraft:splash_potion>,
    lingering_potion: 	<minecraft:lingering_potion>
} as IItemStack[string];

/////////////////////////////////////////////////// LISTA DE EFECTOS -- EFFECTS LIST    //////////////////////////////////////////////////////

val effects = 
{
    //Todos los efectos -- all effects with one state
    lightning:              {normal: "potioncore:lightning"},    
    love:                   {normal: "potioncore:love"},
    luck:             	    {normal: "minecraft:luck"},
    unluck:         	      {normal: "potioncore:unluck"},
    teleport_surface:       {normal: "potioncore:teleport_surface"},
    teleport_spawn:         {normal: "potioncore:teleport_spawn"},
    antinerf:               {normal: "potioncore:cure"},    
    antibuff:               {normal: "potioncore:dispel"},
    disorganization:        {normal: "potioncore:disorganization"},
    invert:          	      {normal: "potioncore:invert"},

    //Efectos con fase normal y larga -- all effects with normal and long states
    night_vision:           {normal: "minecraft:night_vision",      ext: "minecraft:long_night_vision"},
    invisibility:           {normal: "minecraft:invisibility",      ext: "minecraft:long_invisibility"},
    fire_resistance:        {normal: "minecraft:fire_resistance",   ext: "minecraft:long_fire_resistance"},
    water_breathing:        {normal: "minecraft:water_breathing",   ext: "minecraft:long_water_breathing"},
    weakness:               {normal: "minecraft:weakness",          ext: "minecraft:long_weakness"},
    slowness:               {normal: "minecraft:slowness",          ext: "minecraft:long_slowness"},
    nausea:                 {normal: "potioncore:nausea",           ext: "potioncore:long_nausea"},
    glowing:                {normal: "potioncore:glowing",          ext: "potioncore:long_glowing"},
    flight:                 {normal: "potioncore:flight",           ext: "potioncore:long_flight"},
    anchor:                 {normal: "potioncore:solid_core",       ext: "potioncore:long_solid_core"},
    antidote:               {normal: "potioncore:antidote",         ext: "potioncore:long_antidote"},
    antiwither:             {normal: "potioncore:purity",           ext: "potioncore:long_purity"},
    gills:                  {normal: "potioncore:drown",            ext: "potioncore:long_drown"},
    climb:                  {normal: "potioncore:climb",            ext: "potioncore:long_climb"},
    perplexity:             {normal: "potioncore:perplexity",       ext: "potioncore:long_perplexity"},

    //Efectos con fase normal y fuerte -- all effects with normal and strong states
    damage:             {normal: "minecraft:harming",       strong: "minecraft:strong_harming"},
    healing:            {normal: "minecraft:healing",       strong: "minecraft:strong_healing"},
    saturation:         {normal: "potioncore:saturation",   strong: "potioncore:strong_saturation"},
    teleport_random:    {normal: "potioncore:teleport",     strong: "potioncore:strong_teleport"},    
    explosion:          {normal: "potioncore:explode",      strong: "potioncore:strong_explode"},
    fire:               {normal: "potioncore:fire",         strong: "potioncore:strong_fire"},
    roulette:           {normal: "potioncore:chance",       strong: "potioncore:strong_chance"},
    launch:             {normal: "potioncore:launch",       strong: "potioncore:strong_launch"}, 
    bless:              {normal: "potioncore:bless",        strong: "potioncore:strong_bless"},
    curse:              {normal: "potioncore:curse",        strong: "potioncore:strong_curse"},
    burst:         	    {normal: "potioncore:burst",        strong: "potioncore:strong_burst"},

    //Efectos con tres fases -- all effects with 3 types of states
    poison:             {normal: "minecraft:poison",                strong: "minecraft:strong_poison", 			    ext: "minecraft:long_poison"},
    swiftness:          {normal: "minecraft:swiftness",             strong: "minecraft:strong_swiftness", 	    	ext: "minecraft:long_swiftness"},
    regeneration:       {normal: "minecraft:regeneration",          strong: "minecraft:strong_regeneration", 		ext: "minecraft:long_regeneration"},
    strength:           {normal: "minecraft:strength",              strong: "minecraft:strong_strength", 		    ext: "minecraft:long_strength"},
    leaping:            {normal: "minecraft:leaping",               strong: "minecraft:strong_leaping", 		    ext: "minecraft:long_leaping"},
    repair:             {normal: "potioncore:repair",               strong: "potioncore:strong_repair", 		    ext: "potioncore:long_repair"},
    wither:             {normal: "potioncore:wither",               strong: "potioncore:strong_wither", 		    ext: "potioncore:long_wither"},
    hunger:             {normal: "potioncore:hunger",               strong: "potioncore:strong_hunger", 		    ext: "potioncore:long_hunger"},
    blindness:          {normal: "potioncore:blindness",            strong: "potioncore:strong_blindness", 		    ext: "potioncore:long_blindness"},
    levitation:         {normal: "potioncore:levitation",           strong: "potioncore:strong_levitation", 		ext: "potioncore:long_levitation"},
    absorption:         {normal: "potioncore:absorption",           strong: "potioncore:strong_absorption", 		ext: "potioncore:long_absorption"},
    haste:   		        {normal: "potioncore:haste",                strong: "potioncore:strong_haste", 			    ext: "potioncore:long_haste"},
    mining_fatigue:     {normal: "potioncore:mining_fatigue",       strong: "potioncore:strong_mining_fatigue",		ext: "potioncore:long_mining_fatigue"},
    health_boost:       {normal: "potioncore:health_boost",         strong: "potioncore:strong_health_boost", 		ext: "potioncore:long_health_boost"},
    resistance:         {normal: "potioncore:resistance",           strong: "potioncore:strong_resistance", 		ext: "potioncore:long_resistance"},
    extension:          {normal: "potioncore:extension",            strong: "potioncore:strong_extension", 		    ext: "potioncore:long_extension"},
    recoil:             {normal: "potioncore:recoil",               strong: "potioncore:strong_recoil", 		    ext: "potioncore:long_recoil"},
    longinus:           {normal: "potioncore:broken_magic_shield",  strong: "potioncore:strong_broken_magic_shield",ext: "potioncore:long_broken_magic_shield"},
    armor:              {normal: "potioncore:iron_skin",            strong: "potioncore:strong_iron_skin", 		    ext: "potioncore:long_iron_skin"},
    penetration:        {normal: "potioncore:diamond_skin",         strong: "potioncore:strong_diamond_skin", 		ext: "potioncore:long_diamond_skin"},
    reach:              {normal: "potioncore:reach",                strong: "potioncore:strong_reach", 			    ext: "potioncore:long_reach"},
    step_up:            {normal: "potioncore:step_up",              strong: "potioncore:strong_step_up", 		    ext: "potioncore:long_step_up"},
    corrosion:          {normal: "potioncore:rust",                 strong: "potioncore:strong_rust", 			    ext: "potioncore:long_rust"},
    antiresistance:     {normal: "potioncore:vulnerable",           strong: "potioncore:strong_vulnerable", 		ext: "potioncore:long_vulnerable"},
    inhibitor:          {normal: "potioncore:magic_inhibition",     strong: "potioncore:strong_magic_inhibition",   ext: "potioncore:long_magic_inhibition"},
    weight:             {normal: "potioncore:weight",               strong: "potioncore:strong_weight", 		    ext: "potioncore:long_weight"},
    revival:       	    {normal: "potioncore:revival",              strong: "potioncore:strong_revival", 		    ext: "potioncore:long_revival"},
    klutz:              {normal: "potioncore:klutz",                strong: "potioncore:strong_klutz", 			    ext: "potioncore:long_klutz"},
    pulverize:          {normal: "potioncore:broken_armor",         strong: "potioncore:strong_broken_armor", 	    ext: "potioncore:long_broken_armor"},
    focus:      	      {normal: "potioncore:magic_focus",          strong: "potioncore:strong_magic_focus", 	    ext: "potioncore:long_magic_focus"},
    at_shield:          {normal: "potioncore:magic_shield",         strong: "potioncore:strong_magic_shield", 	    ext: "potioncore:long_magic_shield"},
    slow_fall:          {normal: "potioncore:slow_fall",            strong: "potioncore:strong_slow_fall", 		    ext: "potioncore:long_slow_fall"},
    spin:               {normal: "potioncore:spin",                 strong: "potioncore:strong_spin", 			    ext: "potioncore:long_spin"},
    archery:            {normal: "potioncore:archery",              strong: "potioncore:strong_archery", 		    ext: "potioncore:long_archery"}
} as string[string][string];

/////////////////////////////////////////////////  LISTA DE INGREDIENTES -- INGREDIENTS LISTS   ///////////////////////////////////////////////////////////////

//Bottom ingredient
val bases = 
{
  //Potion's NAME       INGREDIENT                             
    luck:             	effects["leaping"]["normal"],            
    teleport_surface:   effects["teleport_random"]["normal"],  
    unluck:         	  effects["luck"]["normal"],           
    love:               effects["healing"]["normal"],     
    antinerf:           thick_water,                            
    antibuff:           effects["antinerf"]["normal"],         
    teleport_spawn:     effects["teleport_random"]["normal"],  
    disorganization:    mundane_water,                           
    invert:          	  effects["nausea"]["normal"],           
    lightning:          effects["unluck"]["normal"],       

    glowing:        	  awkward_water,                                  
    antiwither:         effects["wither"]["normal"],                
    nausea:             effects["weakness"]["normal"],             
    flight:             effects["slow_fall"]["normal"],                 
    anchor:            	mundane_water,                                
    antidote:           effects["poison"]["normal"],                
    gills:          	  effects["water_breathing"]["normal"],  
    climb:           	  effects["step_up"]["normal"],           
    perplexity:         effects["nausea"]["normal"],            

    saturation:         thick_water,                             
    teleport_random:    thick_water,                             
    explosion:          mundane_water,                            
    fire:              	mundane_water,                            
    roulette:           thick_water,                             
    launch:           	awkward_water,                              
    bless:          	  effects["roulette"]["normal"],            
    curse:          	  effects["roulette"]["normal"],            
    burst:         	    effects["explosion"]["normal"],         


    haste:   		        effects["swiftness"]["normal"],        
    blindness:          effects["invisibility"]["normal"],    
    absorption:         awkward_water,                             
    hunger:             mundane_water,                           
    wither:             mundane_water,                           
    repair:         	  effects["focus"]["normal"],
    blindness:          effects["weakness"]["normal"],
    levitation:         effects["slow_fall"]["normal"],
    mining_fatigue:    	effects["haste"]["normal"],
    health_boost:       effects["healing"]["normal"],
    resistance:        	thick_water,
    extension:          effects["focus"]["normal"],
    recoil:          	  awkward_water,
    longinus:           effects["at_shield"]["normal"],
    armor:           	  awkward_water,
    penetration:        effects["armor"]["normal"],
    reach:            	awkward_water,
    step_up:            awkward_water,
    corrosion:          effects["repair"]["normal"],
    antiresistance:    	effects["resistance"]["normal"],
    inhibitor:          effects["focus"]["normal"],
    weight:             thick_water,
    revival:       	    thick_water,
    archery:            thick_water,
    klutz:             	effects["archery"]["normal"],
    pulverize:         	effects["penetration"]["normal"],
    at_shield:          effects["resistance"]["normal"],
    slow_fall:          effects["leaping"]["normal"],
    spin:               effects["nausea"]["normal"],
  //love:               effects["healing"]["normal"],   
  
} as string[string];

//Top ingredient
val ingredients =
{
    luck: 		          <minecraft:emerald>,
    teleport_surface:   <minecraft:ender_pearl>,
    unluck: 		        <minecraft:fermented_spider_eye>, 
    love:   		        <minecraft:wheat>,
    antinerf:   	      <minecraft:golden_apple:0>, 
    antibuff:   	      <minecraft:fermented_spider_eye>,
    teleport_spawn: 	  <minecraft:compass>,
    disorganization:    <minecraft:chest>, 
    invert:  		        <minecraft:dirt:0>, 
    lightning:   	      <minecraft:gold_ingot>,

    glowing:    	<minecraft:glowstone>,              
    antiwither: 	<minecraft:golden_apple:0>,          
    nausea: 		  <minecraft:red_mushroom>,               
    flight:  		  <minecraft:potion>.withTag({Potion: effects["launch"]["normal"]}),           
    anchor:    		<minecraft:iron_block>,             
    antidote:   	<minecraft:poisonous_potato>,            
    gills:  		  <minecraft:fermented_spider_eye>,           
    climb: 		    <minecraft:golden_apple:0>,            
    perplexity: 	<minecraft:dirt:0>,            

    saturation: 	    <minecraft:cooked_chicken>,          
    teleport_random:  <minecraft:ender_pearl>,             
    explosion: 		    <minecraft:tnt>,           
    fire: 		        <minecraft:magma>,           
    roulette: 		    <minecraft:potion>.withTag({Potion: effects["focus"]["normal"]}),          
    launch: 		      <minecraft:fireworks>,            
    bless: 		        <minecraft:golden_apple:0>,           
    curse: 		        <minecraft:fermented_spider_eye>,           
    burst: 		        <minecraft:potion>.withTag({Potion: effects["focus"]["normal"]}),          
    
    haste:   		    <minecraft:golden_pickaxe>,
    blindness:    	<minecraft:fermented_spider_eye>,
    absorption:  	  <minecraft:gold_block>, 
    hunger: 		    <minecraft:rotten_flesh>,
    wither: 		    <minecraft:skull:1>,
    repair: 		    <minecraft:golden_apple:0>,
    blindness:    	<minecraft:dye:0>,
    levitation: 	  <minecraft:fireworks>,
    //levitation: 	<aether_legacy:cloud>,
    mining_fatigue: <minecraft:fermented_spider_eye>,
    health_boost:   <minecraft:potion>.withTag({Potion: effects["focus"]["normal"]}),
    resistance:    	<minecraft:heavy_weighted_pressure_plate>,
    extension:   	  <minecraft:potion>.withTag({Potion: effects["focus"]["normal"]}),
    recoil:  		    <minecraft:cactus>,
    longinus:   	  <minecraft:fermented_spider_eye>,
    armor:   		    <minecraft:iron_ingot>,
    penetration:    <minecraft:diamond>,
    reach:    		  <minecraft:stick>,
    step_up:    	  <minecraft:stone_slab>,
    corrosion:  	  <minecraft:fermented_spider_eye>,
    antiresistance: <minecraft:fermented_spider_eye>,
    inhibitor: 		  <minecraft:fermented_spider_eye>,
    weight:   		  <minecraft:iron_block>,
    revival:   		  <minecraft:golden_apple:1>,
    archery:    	  <minecraft:ender_eye>,
    klutz: 		      <minecraft:fermented_spider_eye>,
    pulverize: 		  <minecraft:fermented_spider_eye>,
    at_shield: 		  <minecraft:potion>.withTag({Potion: effects["focus"]["normal"]}),
    slow_fall: 		  <minecraft:feather>,
    spin:   		    <minecraft:potion>.withTag({Potion: effects["perplexity"]["normal"]})
    
} as IItemStack[string];


/////////////////////////////////////////////   CREADOR DE RECETAS -- RECIPES MAKER  ///////////////////////////////////////////////////////////

for potionType in potionTypes{	//Take every potion type: lingering, splash and normal

    //Todas las pociones convertidas en magic focus -- All potions to magic focus potions
    for effectName in effects{	                                                        //Take every effect in the list
        for state in effects[effectName]{	                                            //Take every state for each effect: long, strong and normal
            brewing.addBrew(
                potionTypes[potionType].withTag({Potion: effects[effectName][state]}), 	//Bottom ingredient (take ever single potion)
                potionTypes["normal_potion"].withTag({Potion: awkward_water}),		    //Top ingredient
                potionTypes[potionType].withTag({Potion: effects["focus"][state]})  	//Result, focus potion
            );
        }
    }  
	
    //Crea todas las recetas con las listas -- Make all recipes with effect list, ingredients list and bases list
    for potionName in bases{                                                                //Take every bottom ingredient, with a unique name 
        brewing.addBrew(
                potionTypes[potionType].withTag({Potion: bases[potionName]}),               //Use the bottom ingredient taken
                ingredients[potionName],                                                    //Take a top ingredient with the same name that bottom ingredints list
                potionTypes[potionType].withTag({Potion: effects[potionName]["normal"]})    //Take the result potion with the same name that bottom ingredients list
            );
    }
}
