import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;

//NO MODS REQUIRED VERSION (Just "Potion Core" duh)
//Is required the script of potion update system
//NO requiere mods externos mas que "Potion core"
//Se requiere el script complemeto del sistema de mejora de pociones 

//Pociones base -- no effects potions
val agua_rara = "minecraft:awkward";
val agua_densa = "minecraft:thick";
val agua_vulgar = "minecraft:mundane";

//tipos de pociones -- types of potions
val potionTypes = 
{
    pocion_normal: <minecraft:potion>,
    pocion_arrojadiza: <minecraft:splash_potion>,
    pocion_flecha: <minecraft:lingering_potion>
} as IItemStack[string];

//Todos los efectos organizados   -- effects list
val effects = 
{
    //Todos los efectos -- all effects with one state
    rayo:               {normal: "potioncore:lightning"},    
    amor:               {normal: "potioncore:love"},
    suerte:             {normal: "minecraft:luck"},
    infortunio:         {normal: "potioncore:unluck"},
    teleport_surface:   {normal: "potioncore:teleport_surface"},
    teleport_spawn:     {normal: "potioncore:teleport_spawn"},
    antinerf:           {normal: "potioncore:cure"},    
    antibuff:           {normal: "potioncore:dispel"},
    desorganizacion:    {normal: "potioncore:disorganization"},
    invercion:          {normal: "potioncore:invert"},

    //Efectos con fase normal y larga -- all effects with normal and long states
        //resistencia_hipotermia: ["toughasnails:cold_resistance_type", "toughasnails:long_cold_resistance_type"],
        //resistencia_hipertermia: {normal: "toughasnails:heat_resistance_type", larga: "toughasnails:long_heat_resistance_type"},
    vision_nocturna:        {normal: "minecraft:night_vision",      larga: "minecraft:long_night_vision"},
    invisibilidad:          {normal: "minecraft:invisibility",      larga: "minecraft:long_invisibility"},
    resistencia_ignifuga:   {normal: "minecraft:fire_resistance",   larga: "minecraft:long_fire_resistance"},
    respiracion_acuatica:   {normal: "minecraft:water_breathing",   larga: "minecraft:long_water_breathing"},
    debilidad:              {normal: "minecraft:weakness",          larga: "minecraft:long_weakness"},
    lentitud:               {normal: "minecraft:slowness",          larga: "minecraft:long_slowness"},
    nausea:                 {normal: "potioncore:nausea",           larga: "potioncore:long_nausea"},
    iluminacion:            {normal: "potioncore:glowing",          larga: "potioncore:long_glowing"},
    vuelo:                  {normal: "potioncore:flight",           larga: "potioncore:long_flight"},
    anclado:                {normal: "potioncore:solid_core",       larga: "potioncore:long_solid_core"},
    antidoto:               {normal: "potioncore:antidote",         larga: "potioncore:long_antidote"},
    antiwither:             {normal: "potioncore:purity",           larga: "potioncore:long_purity"},
    branqueas:              {normal: "potioncore:drown",            larga: "potioncore:long_drown"},
    escalada:               {normal: "potioncore:climb",            larga: "potioncore:long_climb"},
    confusion:              {normal: "potioncore:perplexity",       larga: "potioncore:long_perplexity"},

    //Efectos con fase normal y fuerte -- all effects with normal and strong states
    damage:             {normal: "minecraft:harming",       strong: "minecraft:strong_harming"},
    curacion:           {normal: "minecraft:healing",       strong: "minecraft:strong_healing"},
    saturacion:         {normal: "potioncore:saturation",   strong: "potioncore:strong_saturation"},
    teleport_random:    {normal: "potioncore:teleport",     strong: "potioncore:strong_teleport"},    
    explosion:          {normal: "potioncore:explode",      strong: "potioncore:strong_explode"},
    fuego:              {normal: "potioncore:fire",         strong: "potioncore:strong_fire"},
    ruleta:             {normal: "potioncore:chance",       strong: "potioncore:strong_chance"},
    despegue:           {normal: "potioncore:launch",       strong: "potioncore:strong_launch"}, 
    bendicion:          {normal: "potioncore:bless",        strong: "potioncore:strong_bless"},
    maldicion:          {normal: "potioncore:curse",        strong: "potioncore:strong_curse"},
    detonacion:         {normal: "potioncore:burst",        strong: "potioncore:strong_burst"},

    //Efectos con tres fases -- all effects with 3 types of states
    veneno:             {normal: "minecraft:poison",                strong: "minecraft:strong_poison", larga: "minecraft:long_poison"},
    velocidad:          {normal: "minecraft:swiftness",             strong: "minecraft:strong_swiftness", larga: "minecraft:long_swiftness"},
    regeneracion:       {normal: "minecraft:regeneration",          strong: "minecraft:strong_regeneration", larga: "minecraft:long_regeneration"},
    fuerza:             {normal: "minecraft:strength",              strong: "minecraft:strong_strength", larga: "minecraft:long_strength"},
    salto:              {normal: "minecraft:leaping",               strong: "minecraft:strong_leaping", larga: "minecraft:long_leaping"},
    reparacion:         {normal: "potioncore:repair",               strong: "potioncore:strong_repair", larga: "potioncore:long_repair"},
    wither:             {normal: "potioncore:wither",               strong: "potioncore:strong_wither", larga: "potioncore:long_wither"},
    hambre:             {normal: "potioncore:hunger",               strong: "potioncore:strong_hunger", larga: "potioncore:long_hunger"},
    ceguera:            {normal: "potioncore:blindness",            strong: "potioncore:strong_blindness", larga: "potioncore:long_blindness"},
    levitacion:         {normal: "potioncore:levitation",           strong: "potioncore:strong_levitation", larga: "potioncore:long_levitation"},
    absorcion:          {normal: "potioncore:absorption",           strong: "potioncore:strong_absorption", larga: "potioncore:long_absorption"},
    velocidad_minera:   {normal: "potioncore:haste",                strong: "potioncore:strong_haste", larga: "potioncore:long_haste"},
    lentitud_minera:    {normal: "potioncore:mining_fatigue",       strong: "potioncore:strong_mining_fatigue", larga: "potioncore:long_mining_fatigue"},
    mejora_salud:       {normal: "potioncore:health_boost",         strong: "potioncore:strong_health_boost", larga: "potioncore:long_health_boost"},
    resistencia:        {normal: "potioncore:resistance",           strong: "potioncore:strong_resistance", larga: "potioncore:long_resistance"},
    extender:           {normal: "potioncore:extension",            strong: "potioncore:strong_extension", larga: "potioncore:long_extension"},
    retroceso:          {normal: "potioncore:recoil",               strong: "potioncore:strong_recoil", larga: "potioncore:long_recoil"},
    longinus:           {normal: "potioncore:broken_magic_shield",  strong: "potioncore:strong_broken_magic_shield", larga: "potioncore:long_broken_magic_shield"},
    armadura:           {normal: "potioncore:iron_skin",            strong: "potioncore:strong_iron_skin", larga: "potioncore:long_iron_skin"},
    penetracion:        {normal: "potioncore:diamond_skin",         strong: "potioncore:strong_diamond_skin", larga: "potioncore:long_diamond_skin"},
    alcance:            {normal: "potioncore:reach",                strong: "potioncore:strong_reach", larga: "potioncore:long_reach"},
    zancada:            {normal: "potioncore:step_up",              strong: "potioncore:strong_step_up", larga: "potioncore:long_step_up"},
    corrosion:          {normal: "potioncore:rust",                 strong: "potioncore:strong_rust", larga: "potioncore:long_rust"},
    antiresistencia:    {normal: "potioncore:vulnerable",           strong: "potioncore:strong_vulnerable", larga: "potioncore:long_vulnerable"},
    inhibidor:          {normal: "potioncore:magic_inhibition",     strong: "potioncore:strong_magic_inhibition", larga: "potioncore:long_magic_inhibition"},
    peso:               {normal: "potioncore:weight",               strong: "potioncore:strong_weight", larga: "potioncore:long_weight"},
    resurreccion:       {normal: "potioncore:revival",              strong: "potioncore:strong_revival", larga: "potioncore:long_revival"},
    tuerto:             {normal: "potioncore:klutz",                strong: "potioncore:strong_klutz", larga: "potioncore:long_klutz"},
    triturador:         {normal: "potioncore:broken_armor",         strong: "potioncore:strong_broken_armor", larga: "potioncore:long_broken_armor"},
    concentracion:      {normal: "potioncore:magic_focus",          strong: "potioncore:strong_magic_focus", larga: "potioncore:long_magic_focus"},
    at_shield:          {normal: "potioncore:magic_shield",         strong: "potioncore:strong_magic_shield", larga: "potioncore:long_magic_shield"},
    planeo:             {normal: "potioncore:slow_fall",            strong: "potioncore:strong_slow_fall", larga: "potioncore:long_slow_fall"},
    giro:               {normal: "potioncore:spin",                 strong: "potioncore:strong_spin", larga: "potioncore:long_spin"},
    tirador:            {normal: "potioncore:archery",              strong: "potioncore:strong_archery", larga: "potioncore:long_archery"}
} as string[string][string];

//Recetas -- Recipes
val bases = 
{
  //Potion's NAME       BASE                                    INGREDIENT                             
    suerte:             effects["salto"]["normal"],            
    teleport_surface:   effects["teleport_random"]["normal"],  
    infortunio:         effects["suerte"]["normal"],           
    amor:               effects["curacion"]["normal"],     
    antinerf:           agua_densa,                            
    antibuff:           effects["antinerf"]["normal"],         
    teleport_spawn:     effects["teleport_random"]["normal"],  
    desorganizacion:    agua_vulgar,                           
    invercion:          effects["nausea"]["normal"],           
    rayo:               effects["infortunio"]["normal"],       

    iluminacion:        agua_rara,                                  
    antiwither:         effects["wither"]["normal"],                
    nausea:             effects["debilidad"]["normal"],             
    vuelo:              effects["planeo"]["normal"],                 
    anclado:            agua_vulgar,                                
    antidoto:           effects["veneno"]["normal"],                
    branqueas:          effects["respiracion_acuatica"]["normal"],  
    escalada:           effects["zancada"]["normal"],           
    confusion:          effects["nausea"]["normal"],            

    saturacion:         agua_densa,                             
    teleport_random:    agua_densa,                             
    explosion:          agua_vulgar,                            
    fuego:              agua_vulgar,                            
    ruleta:             agua_densa,                             
    despegue:           agua_rara,                              
    bendicion:          effects["ruleta"]["normal"],            
    maldicion:          effects["ruleta"]["normal"],            
    detonacion:         effects["explosion"]["normal"],         


    velocidad_minera:   effects["velocidad"]["normal"],        
    ceguera:            effects["invisibilidad"]["normal"],    
    absorcion:          agua_rara,                             
    hambre:             agua_vulgar,                           
    wither:             agua_vulgar,                           
    reparacion:         effects["concentracion"]["normal"],
    ceguera:            effects["debilidad"]["normal"],
    //levitacion:         ,
    lentitud_minera:    effects["velocidad_minera"]["normal"],
    mejora_salud:       effects["curacion"]["normal"],
    resistencia:        agua_densa,
    extender:           effects["concentracion"]["normal"],
    retroceso:          agua_rara,
    longinus:           effects["at_shield"]["normal"],
    armadura:           agua_rara,
    penetracion:        effects["armadura"]["normal"],
    alcance:            agua_rara,
    zancada:            agua_rara,
    corrosion:          effects["reparacion"]["normal"],
    antiresistencia:    effects["resistencia"]["normal"],
    inhibidor:          effects["concentracion"]["normal"],
    peso:               agua_densa,
    resurreccion:       agua_densa,
    tirador:            agua_densa,
    tuerto:             effects["tirador"]["normal"],
    triturador:         effects["penetracion"]["normal"],
    at_shield:          effects["resistencia"]["normal"],
    planeo:             effects["salto"]["normal"],
    giro:               effects["nausea"]["normal"],
  //amor:               effects["curacion"]["normal"],         <minecraft:wheat>,
  
} as string[string];

val ingredients =
{
    suerte: <minecraft:emerald>,
    teleport_surface:   <minecraft:ender_pearl>,
    infortunio: <minecraft:fermented_spider_eye>, 
    amor:   <minecraft:wheat>,
    antinerf:   <minecraft:golden_apple:0>, 
    antibuff:   <minecraft:fermented_spider_eye>,
    teleport_spawn: <minecraft:compass>,
    desorganizacion:    <minecraft:chest>, 
    invercion:  <minecraft:dirt:0>, 
    rayo:   <minecraft:gold_ingot>,

    iluminacion:    <minecraft:glowstone>,              
    antiwither: <minecraft:golden_apple:0>,          
    nausea: <minecraft:red_mushroom>,               
    vuelo:  <minecraft:potion>.withTag({Potion: effects["despegue"]["normal"]}),           
    anclado:    <minecraft:iron_block>,             
    antidoto:   <minecraft:poisonous_potato>,            
    branqueas:  <minecraft:fermented_spider_eye>,           
    escalada: <minecraft:golden_apple:0>,            
    confusion: <minecraft:dirt:0>,            

    saturacion: <minecraft:cooked_chicken>,          
    teleport_random: <minecraft:ender_pearl>,             
    explosion: <minecraft:tnt>,           
    fuego: <minecraft:magma>,           
    ruleta: <minecraft:potion>.withTag({Potion: effects["concentracion"]["normal"]}),          
    despegue: <minecraft:fireworks>,            
    bendicion: <minecraft:golden_apple:0>,           
    maldicion: <minecraft:fermented_spider_eye>,           
    detonacion: <minecraft:potion>.withTag({Potion: effects["concentracion"]["normal"]}),          
    
    velocidad_minera:   <minecraft:golden_pickaxe>,
    ceguera:    <minecraft:fermented_spider_eye>,
    absorcion:  <minecraft:gold_block>, 
    hambre: <minecraft:rotten_flesh>,
    wither: <minecraft:skull:1>,
    reparacion: <minecraft:golden_apple:0>,
    ceguera:    <minecraft:dye:0>,
    //levitacion: <aether_legacy:cloud>,
    lentitud_minera:    <minecraft:fermented_spider_eye>,
    mejora_salud:   <minecraft:potion>.withTag({Potion: effects["concentracion"]["normal"]}),
    resistencia:    <minecraft:heavy_weighted_pressure_plate>,
    extender:   <minecraft:potion>.withTag({Potion: effects["concentracion"]["normal"]}),
    retroceso:  <minecraft:cactus>,
    longinus:   <minecraft:fermented_spider_eye>,
    armadura:   <minecraft:iron_ingot>,
    penetracion:    <minecraft:diamond>,
    alcance:    <minecraft:stick>,
    zancada:    <minecraft:stone_slab>,
    corrosion:  <minecraft:fermented_spider_eye>,
    antiresistencia: <minecraft:fermented_spider_eye>,
    inhibidor: <minecraft:fermented_spider_eye>,
    peso:   <minecraft:iron_block>,
    resurreccion:   <minecraft:golden_apple:1>,
    tirador:    <minecraft:ender_eye>,
    tuerto: <minecraft:fermented_spider_eye>,
    triturador: <minecraft:fermented_spider_eye>,
    at_shield: <minecraft:potion>.withTag({Potion: effects["concentracion"]["normal"]}),
    planeo: <minecraft:feather>,
    giro:   <minecraft:potion>.withTag({Potion: effects["confusion"]["normal"]})
    
} as IItemStack[string];


//Credor de recetas -- Recipes maker
for potionType in potionTypes{

    //Todas las pociones convertidas en magic focus -- all potions to magic focus potions
    for effectName in effects{
        for state in effects[effectName]{
            brewing.addBrew(
                potionTypes[potionType].withTag({Potion: effects[effectName][state]}),
                potionTypes["pocion_normal"].withTag({Potion: agua_rara}),
                potionTypes[potionType].withTag({Potion: effects["concentracion"][state]})
            );
        }
    }  

    for potionName in bases{
        brewing.addBrew(
                potionTypes[potionType].withTag({Potion: bases[potionName]}),
                ingredients[potionName],
                potionTypes[potionType].withTag({Potion: effects[potionName]["normal"]})
            );
    }
}



