//Script for potion update system  (Normal potion -> splash potion -> lingering potion)
//Script de mejora de pociones (Normales -> arrojadizas -> para flechas)


//tipos de pociones -- types of potions
val pocion_normal = <minecraft:potion>;
val pocion_arrojadiza = <minecraft:splash_potion>;
val pocion_flecha = <minecraft:lingering_potion>;

//Todos los efectos organizados   -- effects list

//Todos los efectos -- all effects with one state
val efectosSimples =
{
    rayo : "potioncore:lightning",    
    amor : "potioncore:love",
    suerte : "minecraft:luck",
    infortunio :"potioncore:unluck",
    teleport_surface : "potioncore:teleport_surface",
    teleport_spawn : "potioncore:teleport_spawn",
    antinerf : "potioncore:cure",    
    antibuff :"potioncore:dispel",
    desorganizacion : "potioncore:disorganization",
    invercion : "potioncore:invert"   
} as string[string];

//Efectos con fase normal y larga -- all effects with normal and long states
val efectosLargos = 
{
    //resistencia_hipotermia : ["toughasnails:cold_resistance_type", "toughasnails:long_cold_resistance_type"],
    //resistencia_hipertermia : ["toughasnails:heat_resistance_type", "toughasnails:long_heat_resistance_type"],
    /*
    vision_nocturna : ["minecraft:night_vision", "minecraft:long_night_vision"],
    invisibilidad : ["minecraft:invisibility", "minecraft:long_invisibility"],
    resistencia_ignifuga : ["minecraft:fire_resistance", "minecraft:long_fire_resistance"],
    respiracion_acuatica : ["minecraft:water_breathing", "minecraft:long_water_breathing"],
    debilidad : ["minecraft:weakness", "minecraft:long_weakness"],
    lentitud : ["minecraft:slowness", "minecraft:long_slowness"],
    */
    nausea : ["potioncore:nausea", "potioncore:long_nausea"],
    iluminacion : ["potioncore:glowing", "potioncore:long_glowing"],    
    vuelo : ["potioncore:flight", "potioncore:long_flight"],
    anclado :["potioncore:solid_core", "potioncore:long_solid_core"],
    antidoto : ["potioncore:antidote", "potioncore:long_antidote"],    
    antiwither : ["potioncore:purity", "potioncore:long_purity"],
    branqueas : ["potioncore:drown", "potioncore:long_drown"],
    escalada : ["potioncore:climb", "potioncore:long_climb"],
    confusion : ["potioncore:perplexity", "potioncore:long_perplexity"]    
} as string[][string];

//Efectos con fase normal y fuerte -- all effects with normal and strong states
val efectosFuertes = 
{
    /*
    damage : ["minecraft:harming", "minecraft:strong_harming"],
    curacion : ["minecraft:healing", "minecraft:strong_healing"],
    */
    saturacion : ["potioncore:saturation", "potioncore:strong_saturation"],
    teleport_random : ["potioncore:teleport", "potioncore:strong_teleport"],    
    explosion : ["potioncore:explode", "potioncore:strong_explode"],
    fuego : ["potioncore:fire", "potioncore:strong_fire"],
    ruleta : ["potioncore:chance", "potioncore:strong_chance"],
    despegue : ["potioncore:launch", "potioncore:strong_launch"], 
    bendicion : ["potioncore:bless", "potioncore:strong_bless"],
    maldicion : ["potioncore:curse", "potioncore:strong_curse"],
    detonacion : ["potioncore:burst", "potioncore:strong_burst"]
} as string[][string];

//Efectos con tres fases -- all effects with 3 types of states
val efectosComplejos = 
{
    /*
    veneno : ["minecraft:poison", "minecraft:strong_poison", "minecraft:long_poison"],
    velocidad :["minecraft:swiftness", "minecraft:strong_swiftness", "minecraft:long_swiftness"],
    regeneracion : ["minecraft:regeneration", "minecraft:strong_regeneration", "minecraft:long_regeneration"],
    fuerza : ["minecraft:strength", "minecraft:strong_strength", "minecraft:long_strength"],
    salto : ["minecraft:leaping", "minecraft:strong_leaping", "minecraft:long_leaping"],
    */
    reparacion : ["potioncore:repair","potioncore:strong_repair", "potioncore:long_repair"],
    wither : ["potioncore:wither", "potioncore:strong_wither", "potioncore:long_wither"],
    hambre : ["potioncore:hunger", "potioncore:strong_hunger", "potioncore:long_hunger"],
    ceguera :["potioncore:blindness", "potioncore:strong_blindness", "potioncore:long_blindness"],
    levitacion : ["potioncore:levitation", "potioncore:strong_levitation", "potioncore:long_levitation"],
    absorcion : ["potioncore:absorption", "potioncore:strong_absorption", "potioncore:long_absorption"],
    velocidad_minera : ["potioncore:haste", "potioncore:strong_haste", "potioncore:long_haste"],
    lentitud_minera : ["potioncore:mining_fatigue", "potioncore:strong_mining_fatigue", "potioncore:long_mining_fatigue"],
    mejora_salud : ["potioncore:health_boost", "potioncore:strong_health_boost", "potioncore:long_health_boost"],
    resistencia : ["potioncore:resistance", "potioncore:strong_resistance", "potioncore:long_resistance"],
    extender : ["potioncore:extension", "potioncore:strong_extension", "potioncore:long_extension"],
    retroceso : ["potioncore:recoil", "potioncore:strong_recoil", "potioncore:long_recoil"],
    longinus : ["potioncore:broken_magic_shield", "potioncore:strong_broken_magic_shield", "potioncore:long_broken_magic_shield"],
    armadura : ["potioncore:iron_skin", "potioncore:strong_iron_skin", "potioncore:long_iron_skin"],
    penetracion :["potioncore:diamond_skin", "potioncore:strong_diamond_skin", "potioncore:long_diamond_skin"],
    alcance : ["potioncore:reach", "potioncore:strong_reach", "potioncore:long_reach"],
    zancada : ["potioncore:step_up", "potioncore:strong_step_up", "potioncore:long_step_up"],
    corrosion : ["potioncore:rust", "potioncore:strong_rust", "potioncore:long_rust"],
    antiresistencia : ["potioncore:vulnerable", "potioncore:strong_vulnerable", "potioncore:long_vulnerable"],
    inhibidor : ["potioncore:magic_inhibition", "potioncore:strong_magic_inhibition", "potioncore:long_magic_inhibition"],
    peso : ["potioncore:weight", "potioncore:strong_weight", "potioncore:long_weight"],
    resurreccion : ["potioncore:revival", "potioncore:strong_revival", "potioncore:long_revival"],
    tuerto : ["potioncore:klutz", "potioncore:strong_klutz", "potioncore:long_klutz"],
    triturador : ["potioncore:broken_armor", "potioncore:strong_broken_armor", "potioncore:long_broken_armor"],
    concentracion : ["potioncore:magic_focus", "potioncore:strong_magic_focus", "potioncore:long_magic_focus"],
    escudo :["potioncore:magic_shield", "potioncore:strong_magic_shield", "potioncore:long_magic_shield"],
    planeo : ["potioncore:slow_fall", "potioncore:strong_slow_fall", "potioncore:long_slow_fall"],
    giro : ["potioncore:spin", "potioncore:strong_spin", "potioncore:long_spin"],
    tirador : ["potioncore:archery", "potioncore:strong_archery", "potioncore:long_archery"]
} as string[][string];


//Pociones a arrojadizas y a flechas -- script for normal potion to splash potion and splash potion to lingering potion
for efecto in efectosSimples{
    brewing.addBrew(pocion_normal.withTag({Potion: efectosSimples[efecto]}), <minecraft:gunpowder>, pocion_arrojadiza.withTag({Potion: efectosSimples[efecto]}));
    brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosSimples[efecto]}), <minecraft:dragon_breath>, pocion_flecha.withTag({Potion: efectosSimples[efecto]}));
}
for efectoConjunto in efectosFuertes{
    for efecto in 0 to 2{
        brewing.addBrew(pocion_normal.withTag({Potion: efectosFuertes[efectoConjunto][efecto]}), <minecraft:gunpowder>, pocion_arrojadiza.withTag({Potion: efectosFuertes[efectoConjunto][efecto]}));
        brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosFuertes[efectoConjunto][efecto]}), <minecraft:dragon_breath>, pocion_flecha.withTag({Potion: efectosFuertes[efectoConjunto][efecto]}));
    }
}
for efectoConjunto in efectosLargos{
    for efecto in 0 to 2{
        brewing.addBrew(pocion_normal.withTag({Potion: efectosLargos[efectoConjunto][efecto]}), <minecraft:gunpowder>, pocion_arrojadiza.withTag({Potion: efectosLargos[efectoConjunto][efecto]}));
        brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosLargos[efectoConjunto][efecto]}), <minecraft:dragon_breath>, pocion_flecha.withTag({Potion: efectosLargos[efectoConjunto][efecto]}));
    }
}
for efectoConjunto in efectosComplejos{
    for efecto in 0 to 3{
        brewing.addBrew(pocion_normal.withTag({Potion: efectosComplejos[efectoConjunto][efecto]}), <minecraft:gunpowder>, pocion_arrojadiza.withTag({Potion: efectosComplejos[efectoConjunto][efecto]}));
        brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosComplejos[efectoConjunto][efecto]}), <minecraft:dragon_breath>, pocion_flecha.withTag({Potion: efectosComplejos[efectoConjunto][efecto]}));
    }
}

//Aumentos de duracion -- script for any potion + redstone = long potion
for efectoConjunto in efectosLargos{
    brewing.addBrew(pocion_normal.withTag({Potion: efectosLargos[efectoConjunto][0]}), <minecraft:redstone>, pocion_normal.withTag({Potion: efectosLargos[efectoConjunto][1]}));
    brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosLargos[efectoConjunto][0]}), <minecraft:redstone>, pocion_arrojadiza.withTag({Potion: efectosLargos[efectoConjunto][1]}));
    brewing.addBrew(pocion_flecha.withTag({Potion: efectosLargos[efectoConjunto][0]}), <minecraft:redstone>, pocion_flecha.withTag({Potion: efectosLargos[efectoConjunto][1]}));
}
for efectoConjunto in efectosComplejos{
    brewing.addBrew(pocion_normal.withTag({Potion: efectosComplejos[efectoConjunto][0]}), <minecraft:redstone>, pocion_normal.withTag({Potion: efectosComplejos[efectoConjunto][2]}));
    brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosComplejos[efectoConjunto][0]}), <minecraft:redstone>, pocion_arrojadiza.withTag({Potion: efectosComplejos[efectoConjunto][2]}));
    brewing.addBrew(pocion_flecha.withTag({Potion: efectosComplejos[efectoConjunto][0]}), <minecraft:redstone>, pocion_flecha.withTag({Potion: efectosComplejos[efectoConjunto][2]}));
}

//Aumentos de fuerza -- script for any potion + glowstone = strong potion
for efectoConjunto in efectosFuertes{
    brewing.addBrew(pocion_normal.withTag({Potion: efectosFuertes[efectoConjunto][0]}), <minecraft:glowstone_dust>, pocion_normal.withTag({Potion: efectosFuertes[efectoConjunto][1]}));
    brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosFuertes[efectoConjunto][0]}), <minecraft:glowstone_dust>, pocion_arrojadiza.withTag({Potion: efectosFuertes[efectoConjunto][1]}));
    brewing.addBrew(pocion_flecha.withTag({Potion: efectosFuertes[efectoConjunto][0]}), <minecraft:glowstone_dust>, pocion_flecha.withTag({Potion: efectosFuertes[efectoConjunto][1]}));
}
for efectoConjunto in efectosComplejos{
    brewing.addBrew(pocion_normal.withTag({Potion: efectosComplejos[efectoConjunto][0]}), <minecraft:glowstone_dust>, pocion_normal.withTag({Potion: efectosComplejos[efectoConjunto][1]}));
    brewing.addBrew(pocion_arrojadiza.withTag({Potion: efectosComplejos[efectoConjunto][0]}), <minecraft:glowstone_dust>, pocion_arrojadiza.withTag({Potion: efectosComplejos[efectoConjunto][1]}));
    brewing.addBrew(pocion_flecha.withTag({Potion: efectosComplejos[efectoConjunto][0]}), <minecraft:glowstone_dust>, pocion_flecha.withTag({Potion: efectosComplejos[efectoConjunto][1]}));
}