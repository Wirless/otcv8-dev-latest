function init()
  -- add manually your shaders from /data/shaders

  -- map shaders
  g_shaders.createShader("map_default", "/shaders/map_default_vertex", "/shaders/map_default_fragment")  

  -- use modules.game_interface.gameMapPanel:setShader("map_rainbow") to set shader

  -- outfit shaders
	 g_shaders.createOutfitShader("outfit_default", "/shaders/outfit_default_vertex", "/shaders/outfit_default_fragment")
  --g_shaders.createOutfitShader("outfit_default", "/shaders/outfit_rainbow_vertex", "/shaders/outfit_rainbow_fragment")
  -- you can use creature:setOutfitShader("outfit_rainbow") to set shader




  -- UI element shaders
  g_shaders.createShader("ui_rainbow", "/shaders/ui/ui_rainbow_vertex", "/shaders/ui/ui_rainbow_fragment")

  g_shaders.createShader("ui_uncommon", "/shaders/ui/ui_rare_vertex", "/shaders/ui/ui_uncommon_fragment")
  g_shaders.createShader("ui_rare", "/shaders/ui/ui_rare_vertex", "/shaders/ui/ui_rare_fragment")
  g_shaders.createShader("ui_epic", "/shaders/ui/ui_epic_vertex", "/shaders/ui/ui_epic_fragment")
  -- Modified legendary shader to use gold with floating glitter particles
  g_shaders.createShader("ui_legendary", "/shaders/ui/ui_legendary_vertex", "/shaders/ui/ui_legendary_fragment")
  g_shaders.createShader("ui_mythic", "/shaders/ui/ui_mythic_vertex", "/shaders/ui/ui_mythic_fragment")

g_shaders.createOutfitShader("ruby", "/shaders/outfit_ruby_vertex", "/shaders/outfit_ruby_fragment")
g_shaders.addTexture("ruby", "/images/shaders/ruby.png")

g_shaders.createOutfitShader("aqua", "/shaders/outfit_ruby_vertex", "/shaders/outfit_ruby_fragment")
g_shaders.addTexture("aqua", "/images/shaders/aqua.png")

g_shaders.createOutfitShader("velvet", "/shaders/outfit_velvet_vertex", "/shaders/outfit_velvet_fragment")
g_shaders.addTexture("velvet", "/images/shaders/velvet.png")

g_shaders.createOutfitShader("void", "/shaders/outfit_velvet_vertex", "/shaders/outfit_velvet_fragment")
g_shaders.addTexture("void", "/images/shaders/void.png")

g_shaders.createOutfitShader("trip", "/shaders/outfit_trippy_vertex", "/shaders/outfit_trippy_fragment")
g_shaders.addTexture("trip", "/images/shaders/trip.png")

g_shaders.createOutfitShader("brightblue", "/shaders/outfit_velvet_vertex", "/shaders/outfit_velvet_fragment")
g_shaders.addTexture("brightblue", "/images/shaders/bright_blue.png")

g_shaders.createOutfitShader("pixelblue", "/shaders/outfit_velvet_vertex", "/shaders/outfit_velvet_fragment")
g_shaders.addTexture("pixelblue", "/images/shaders/pixel_blue.png")

g_shaders.createOutfitShader("glitch2", "/shaders/outfit_shimmering_vertex", "/shaders/outfit_shimmering_fragment")
g_shaders.addTexture("glitch2", "/images/shaders/glitch3.png")


g_shaders.createOutfitShader("shim", "/shaders/outfit_overtexture_shimmering_vertex", "/shaders/outfit_overtexture_shimmering_fragment")
g_shaders.addTexture("shim", "/images/shaders/trippy.png")

-- Improved overstars shaders with proper color handling
g_shaders.createOutfitShader("overstars", "/shaders/outfit_starsover_improved_vertex", "/shaders/outfit_starsover_fragment")
g_shaders.addTexture("overstars", "/images/shaders/trippy.png")

-- Trippy texture variations with floating effect shaders
g_shaders.createOutfitShader("overstars2", "/shaders/outfit_starsover_improved_vertex", "/shaders/outfit_starsover2_fragment")
g_shaders.addTexture("overstars2", "/images/shaders/trippy2.png")

g_shaders.createOutfitShader("overstars3", "/shaders/outfit_starsover_improved_vertex", "/shaders/outfit_starsover3_fragment")
g_shaders.addTexture("overstars3", "/images/shaders/trippy3.png")

g_shaders.createOutfitShader("overstars4", "/shaders/outfit_starsover_improved_vertex", "/shaders/outfit_starsover4_fragment")
g_shaders.addTexture("overstars4", "/images/shaders/trippy4.png")

-- New falling stars shader - fast moving without blinking
g_shaders.createOutfitShader("falling_stars", "/shaders/outfit_falling_stars_vertex", "/shaders/outfit_falling_stars_fragment")
g_shaders.addTexture("falling_stars", "/images/shaders/trippy2.png")
g_shaders.createOutfitShader("falling_stars_second", "/shaders/outfit_falling_stars_vertex", "/shaders/outfit_falling_stars_fragment")
g_shaders.addTexture("falling_stars_second", "/images/shaders/trippy4.png")

-- TV Static noise shader variations
g_shaders.createOutfitShader("shim_static", "/shaders/outfit_static_noise_vertex", "/shaders/outfit_static_noise_fragment")
g_shaders.addTexture("shim_static", "/images/shaders/trippy.png")

g_shaders.createOutfitShader("shim_static2", "/shaders/outfit_static_noise_vertex", "/shaders/outfit_static_noise_fragment")
g_shaders.addTexture("shim_static2", "/images/shaders/trippy2.png")

g_shaders.createOutfitShader("shim_static3", "/shaders/outfit_static_noise_vertex", "/shaders/outfit_static_noise_fragment")
g_shaders.addTexture("shim_static3", "/images/shaders/trippy3.png")

g_shaders.createOutfitShader("shim_static4", "/shaders/outfit_static_noise_vertex", "/shaders/outfit_static_noise_fragment")
g_shaders.addTexture("shim_static4", "/images/shaders/trippy4.png")

-- Dual texture blend shader variations
g_shaders.createOutfitShader("shim_dual23", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual23", "/images/shaders/trippy2.png")
g_shaders.addTexture("shim_dual23_second", "/images/shaders/trippy3.png")

g_shaders.createOutfitShader("shim_dual24", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual24", "/images/shaders/trippy2.png")
g_shaders.addTexture("shim_dual24_second", "/images/shaders/trippy4.png")

g_shaders.createOutfitShader("shim_dual34", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual34", "/images/shaders/trippy3.png")
g_shaders.addTexture("shim_dual34_second", "/images/shaders/trippy4.png")

g_shaders.createOutfitShader("shim_dual_all", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual_all", "/images/shaders/trippy.png")
g_shaders.addTexture("shim_dual_all_second", "/images/shaders/trippy4.png")

-- Dual texture with glitter effect shader variations
g_shaders.createOutfitShader("shim_dual_glitter23", "/shaders/outfit_glittering_ruby_vertex", "/shaders/outfit_glittering_ruby_fragment")
g_shaders.addTexture("shim_dual_glitter23", "/images/shaders/trippy2.png")
g_shaders.addTexture("shim_dual_glitter23_second", "/images/shaders/trippy3.png")

g_shaders.createOutfitShader("shim_dual_glitter24", "/shaders/outfit_glittering_ruby_vertex", "/shaders/outfit_glittering_ruby_fragment")
g_shaders.addTexture("shim_dual_glitter24", "/images/shaders/trippy2.png")
g_shaders.addTexture("shim_dual_glitter24_second", "/images/shaders/trippy4.png")

g_shaders.createOutfitShader("shim_dual_glitter34", "/shaders/outfit_glittering_ruby_vertex", "/shaders/outfit_glittering_ruby_fragment")
g_shaders.addTexture("shim_dual_glitter34", "/images/shaders/trippy3.png")
g_shaders.addTexture("shim_dual_glitter34_second", "/images/shaders/trippy4.png")

g_shaders.createOutfitShader("shim_dual_glitter_all", "/shaders/outfit_glittering_ruby_vertex", "/shaders/outfit_glittering_ruby_fragment")
g_shaders.addTexture("shim_dual_glitter_all", "/images/shaders/trippy.png")
g_shaders.addTexture("shim_dual_glitter_all_second", "/images/shaders/trippy4.png")

-- Dual texture with energy effect shader variations
g_shaders.createOutfitShader("shim_dual_energy23", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual_energy23", "/images/shaders/trippy2.png")
g_shaders.addTexture("shim_dual_energy23_second", "/images/shaders/trippy3.png")

g_shaders.createOutfitShader("shim_dual_energy24", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual_energy24", "/images/shaders/trippy2.png")
g_shaders.addTexture("shim_dual_energy24_second", "/images/shaders/trippy4.png")

g_shaders.createOutfitShader("shim_dual_energy34", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual_energy34", "/images/shaders/trippy3.png")
g_shaders.addTexture("shim_dual_energy34_second", "/images/shaders/trippy4.png")

g_shaders.createOutfitShader("shim_dual_energy_all", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("shim_dual_energy_all", "/images/shaders/trippy.png")
g_shaders.addTexture("shim_dual_energy_all_second", "/images/shaders/trippy4.png")

-- New pixelated lava flow shader with battling textures
g_shaders.createOutfitShader("pixel_lava_battle", "/shaders/outfit_pixel_lava_vertex", "/shaders/outfit_pixel_lava_fragment")
g_shaders.addTexture("pixel_lava_battle", "/images/shaders/trippy2.png")
g_shaders.addTexture("pixel_lava_battle_second", "/images/shaders/trippy4.png")

-- New molten crystal shader with opposing texture domains
g_shaders.createOutfitShader("molten_crystal", "/shaders/outfit_molten_crystal_vertex", "/shaders/outfit_molten_crystal_fragment")
g_shaders.addTexture("molten_crystal", "/images/shaders/trippy3.png")
g_shaders.addTexture("molten_crystal_second", "/images/shaders/trippy.png")

-- New Pantone color spectrum shader - uses only the base texture with hue shifting
g_shaders.createOutfitShader("pantone_spectrum", "/shaders/outfit_pantone_spectrum_vertex", "/shaders/outfit_pantone_spectrum_fragment")

-- New Pantone gradient flow shader - creates flowing gradient effects with pantone colors
g_shaders.createOutfitShader("pantone_gradient", "/shaders/outfit_pantone_gradient_vertex", "/shaders/outfit_pantone_gradient_fragment") 

g_shaders.createOutfitShader("greenhue", "/shaders/outfit_huegreen_vertex", "/shaders/outfit_huegreen_fragment")

g_shaders.createOutfitShader("cosmic", "/shaders/outfit_cosmic_vertex", "/shaders/outfit_cosmic_fragment")

g_shaders.createOutfitShader("stargaze", "/shaders/outfit_cosmic_vertex", "/shaders/outfit_stargaze_fragment")

g_shaders.createOutfitShader("lava", "/shaders/outfit_lava_vertex", "/shaders/outfit_lava_fragment")


g_shaders.createOutfitShader("glitter lightblue", "/shaders/outfit_glittering_ruby_vertex", "/shaders/outfit_glittering_ruby_fragment")
g_shaders.addTexture("glitter lightblue", "/images/shaders/lightblue.png")

g_shaders.createOutfitShader("glitter ruby", "/shaders/outfit_glittering_ruby_vertex", "/shaders/outfit_glittering_ruby_fragment")
g_shaders.addTexture("glitter ruby", "/images/shaders/ruby.png")

g_shaders.createOutfitShader("glitter oceangreen", "/shaders/outfit_glitter_oceangreen_vertex", "/shaders/outfit_glitter_oceangreen_fragment")
g_shaders.addTexture("glitter oceangreen", "/images/shaders/aqua.png")

g_shaders.createOutfitShader("glitter purple", "/shaders/outfit_glitter_purple_vertex", "/shaders/outfit_glitter_purple_fragment")
g_shaders.addTexture("glitter purple", "/images/shaders/velvet.png")

-- New shaders
g_shaders.createOutfitShader("electric", "/shaders/outfit_electric_vertex", "/shaders/outfit_electric_fragment")

g_shaders.createOutfitShader("electric goldgreen", "/shaders/outfit_electric_goldgreen_vertex", "/shaders/outfit_electric_goldgreen_fragment")
g_shaders.addTexture("electric goldgreen", "/images/shaders/goldgreen_pattern.png")

g_shaders.createOutfitShader("fire", "/shaders/outfit_fire_vertex", "/shaders/outfit_fire_fragment")

g_shaders.createOutfitShader("Gold", "/shaders/outfit_gold_vertex", "/shaders/outfit_gold_fragment")
g_shaders.addTexture("Gold", "/images/shaders/gold.png")


-- Additional New Shaders
g_shaders.createOutfitShader("drunk", "/shaders/outfit_drunk_vertex", "/shaders/outfit_drunk_fragment")



g_shaders.createOutfitShader("pixelated", "/shaders/outfit_pixelated_vertex", "/shaders/outfit_pixelated_fragment")



-- New goofy shaders 
g_shaders.createOutfitShader("jello", "/shaders/outfit_jello_vertex", "/shaders/outfit_jello_fragment")

g_shaders.createOutfitShader("glitchy", "/shaders/outfit_glitch_vertex", "/shaders/outfit_glitch_fragment")

-- Additional fun shaders
g_shaders.createOutfitShader("bounce", "/shaders/outfit_bounce_vertex", "/shaders/outfit_bounce_fragment")

g_shaders.createOutfitShader("wave", "/shaders/outfit_wave_vertex", "/shaders/outfit_wave_fragment")

-- New bounce variations
g_shaders.createOutfitShader("bounce sideways", "/shaders/outfit_bounce_sideways_vertex", "/shaders/outfit_bounce_sideways_fragment")

g_shaders.createOutfitShader("bounce high", "/shaders/outfit_bounce_high_vertex", "/shaders/outfit_bounce_high_fragment")

-- New effect shaders
g_shaders.createOutfitShader("split", "/shaders/outfit_split_vertex", "/shaders/outfit_split_fragment")

g_shaders.createOutfitShader("whiplash", "/shaders/outfit_whiplash_vertex", "/shaders/outfit_whiplash_fragment")

-- Cyber, Magic and Crystal effect shaders
g_shaders.createOutfitShader("cyber glitch", "/shaders/outfit_cyber_glitch_vertex", "/shaders/outfit_cyber_glitch_fragment")

g_shaders.createOutfitShader("mystical aura", "/shaders/outfit_mystical_aura_vertex", "/shaders/outfit_mystical_aura_fragment")


g_shaders.createOutfitShader("flame knight", "/shaders/outfit_flame_knight_vertex", "/shaders/outfit_flame_knight_fragment")
g_shaders.addTexture("flame knight", "images/shaders/desert_orange.png")
g_shaders.createOutfitShader("shockwave", "/shaders/outfit_shockwave_vertex", "/shaders/outfit_shockwave_fragment")

g_shaders.createOutfitShader("vortex", "/shaders/outfit_vortex_vertex", "/shaders/outfit_vortex_fragment")

g_shaders.createOutfitShader("bubble", "/shaders/outfit_bubble_vertex", "/shaders/outfit_bubble_fragment")

g_shaders.createOutfitShader("fizzy", "/shaders/outfit_fizzy_vertex", "/shaders/outfit_fizzy_fragment")

g_shaders.createOutfitShader("rainbow basic", "/shaders/outfit_rainbow_basic_vertex", "/shaders/outfit_rainbow_basic_fragment")

g_shaders.createOutfitShader("plasmic", "/shaders/outfit_plasmic_vertex", "/shaders/outfit_plasmic_fragment")

g_shaders.createOutfitShader("plasmic fast", "/shaders/outfit_plasmic_fast_vertex", "/shaders/outfit_plasmic_fast_fragment")

g_shaders.createOutfitShader("plasmic toxic", "/shaders/outfit_plasmic_toxic_vertex", "/shaders/outfit_plasmic_toxic_fragment")

g_shaders.createOutfitShader("rainbow cascade", "/shaders/outfit_rainbow_cascade_vertex", "/shaders/outfit_rainbow_cascade_fragment")

-- New cosmic flow shader with space background and flowing pixels
g_shaders.createOutfitShader("cosmic flow", "/shaders/outfit_cosmic_flow_vertex", "/shaders/outfit_cosmic_flow_fragment")

-- New pulsing rings shader with upward flowing glowing rings
g_shaders.createOutfitShader("pulsing rings", "/shaders/outfit_pulsing_rings_vertex", "/shaders/outfit_pulsing_rings_fragment")

g_shaders.createOutfitShader("prismatic", "/shaders/outfit_prismatic_vertex", "/shaders/outfit_prismatic_fragment")

g_shaders.createOutfitShader("swamp", "/shaders/outfit_swamp_vertex", "/shaders/outfit_swamp_fragment")

g_shaders.createOutfitShader("jumping", "/shaders/outfit_jumping_vertex", "/shaders/outfit_jumping_fragment")

-- New rainbow variations
g_shaders.createOutfitShader("rainbow fast", "/shaders/outfit_rainbow_fast_vertex", "/shaders/outfit_rainbow_fast_fragment")

g_shaders.createOutfitShader("rainbow turbo", "/shaders/outfit_rainbow_turbo_vertex", "/shaders/outfit_rainbow_turbo_fragment")

g_shaders.createOutfitShader("rainbow mutation", "/shaders/outfit_rainbow_mutation_vertex", "/shaders/outfit_rainbow_mutation_fragment")

-- Electric eel shader
g_shaders.createOutfitShader("electric eel", "/shaders/outfit_electric_eel_vertex", "/shaders/outfit_electric_eel_fragment")

-- Electric color variations
g_shaders.createOutfitShader("electric red", "/shaders/outfit_electric_red_vertex", "/shaders/outfit_electric_red_fragment")
g_shaders.createOutfitShader("electric green", "/shaders/outfit_electric_green_vertex", "/shaders/outfit_electric_green_fragment")
g_shaders.createOutfitShader("electric purple", "/shaders/outfit_electric_purple_vertex", "/shaders/outfit_electric_purple_fragment")
-- Neon color variations
g_shaders.createOutfitShader("neon red", "/shaders/outfit_neon_red_vertex", "/shaders/outfit_neon_red_fragment")
g_shaders.createOutfitShader("neon green", "/shaders/outfit_neon_green_vertex", "/shaders/outfit_neon_green_fragment")
g_shaders.createOutfitShader("neon purple", "/shaders/outfit_neon_purple_vertex", "/shaders/outfit_neon_purple_fragment")

-- Magical effect shaders
g_shaders.createOutfitShader("arcane overlay", "/shaders/outfit_arcane_overlay_vertex", "/shaders/outfit_arcane_overlay_fragment")
g_shaders.createOutfitShader("shadow cloak", "/shaders/outfit_shadow_cloak_vertex", "/shaders/outfit_shadow_cloak_fragment")
g_shaders.createOutfitShader("celestial radiance", "/shaders/outfit_celestial_radiance_vertex", "/shaders/outfit_celestial_radiance_fragment")

-- Status effect shaders
g_shaders.createOutfitShader("poisoned", "/shaders/outfit_poisoned_vertex", "/shaders/outfit_poisoned_fragment")

-- Color variants for existing shaders
g_shaders.createOutfitShader("fizzy blue", "/shaders/outfit_fizzy_vertex", "/shaders/outfit_fizzy_blue_fragment")
g_shaders.createOutfitShader("fizzy green", "/shaders/outfit_fizzy_vertex", "/shaders/outfit_fizzy_green_fragment")
g_shaders.createOutfitShader("fizzy purple", "/shaders/outfit_fizzy_vertex", "/shaders/outfit_fizzy_purple_fragment")

g_shaders.createOutfitShader("bubble blue", "/shaders/outfit_bubble_vertex", "/shaders/outfit_bubble_blue_fragment")
g_shaders.createOutfitShader("bubble green", "/shaders/outfit_bubble_vertex", "/shaders/outfit_bubble_green_fragment")

g_shaders.createOutfitShader("bounce high blue", "/shaders/outfit_bounce_high_vertex", "/shaders/outfit_bounce_high_blue_fragment")
g_shaders.createOutfitShader("bounce high green", "/shaders/outfit_bounce_high_vertex", "/shaders/outfit_bounce_high_green_fragment")

-- Fun themed shaders
g_shaders.createOutfitShader("silly googly", "/shaders/outfit_silly_googly_vertex", "/shaders/outfit_silly_googly_fragment")
g_shaders.createOutfitShader("goofy stretchy", "/shaders/outfit_goofy_stretchy_vertex", "/shaders/outfit_goofy_stretchy_fragment")
g_shaders.createOutfitShader("mexican fiesta", "/shaders/outfit_mexican_fiesta_vertex", "/shaders/outfit_mexican_fiesta_fragment")

-- Blessed and Cursed effect shaders
g_shaders.createOutfitShader("blessed", "/shaders/outfit_blessed_vertex", "/shaders/outfit_blessed_fragment")
g_shaders.createOutfitShader("cursed", "/shaders/outfit_cursed_vertex", "/shaders/outfit_cursed_fragment")

-- Metallic armor shader with different variants
g_shaders.createOutfitShader("metallic steel", "/shaders/outfit_metallic_vertex", "/shaders/outfit_metallic_fragment")
g_shaders.createOutfitShader("metallic gold", "/shaders/outfit_metallic_gold_vertex", "/shaders/outfit_metallic_gold_fragment")
g_shaders.createOutfitShader("metallic bronze", "/shaders/outfit_metallic_bronze_vertex", "/shaders/outfit_metallic_bronze_fragment")
g_shaders.createOutfitShader("metallic silver", "/shaders/outfit_metallic_silver_vertex", "/shaders/outfit_metallic_silver_fragment")

-- New shader variations
g_shaders.createOutfitShader("glitter twitch", "/shaders/outfit_glitter_twitch_vertex", "/shaders/outfit_glitter_twitch_fragment")

-- Special effect shaders
g_shaders.createOutfitShader("ghost", "/shaders/outfit_ghost_vertex", "/shaders/outfit_ghost_fragment")
g_shaders.createOutfitShader("retro pixelated", "/shaders/outfit_retro_pixelated_vertex", "/shaders/outfit_retro_pixelated_fragment")
g_shaders.createOutfitShader("inverted", "/shaders/outfit_inverted_vertex", "/shaders/outfit_inverted_fragment")
g_shaders.createOutfitShader("neon cyber", "/shaders/outfit_neon_cyber_vertex", "/shaders/outfit_neon_cyber_fragment")

-- Vortex glitter shader with upward flowing particles
g_shaders.createOutfitShader("vortex_glitter", "/shaders/outfit_vortex_glitter_vertex", "/shaders/outfit_vortex_glitter_fragment")

-- Tunnel vortex shader converted from ShaderToy
g_shaders.createOutfitShader("tunnel_vortex", "/shaders/outfit_tunnel_vortex_vertex", "/shaders/outfit_tunnel_vortex_fragment")

-- Textured pulsing rings shader with texture sampling
g_shaders.createOutfitShader("textured_rings", "/shaders/outfit_textured_rings_vertex", "/shaders/outfit_textured_rings_fragment")
g_shaders.addTexture("textured_rings", "/images/shaders/trippy2.png")

-- Tunnel vortex color variations
g_shaders.createOutfitShader("tunnel_vortex_red", "/shaders/outfit_tunnel_vortex_red_vertex", "/shaders/outfit_tunnel_vortex_red_fragment")
g_shaders.createOutfitShader("tunnel_vortex_blue", "/shaders/outfit_tunnel_vortex_blue_vertex", "/shaders/outfit_tunnel_vortex_blue_fragment")
g_shaders.createOutfitShader("tunnel_vortex_neon", "/shaders/outfit_tunnel_vortex_neon_vertex", "/shaders/outfit_tunnel_vortex_neon_fragment")
g_shaders.createOutfitShader("tunnel_vortex_green", "/shaders/outfit_tunnel_vortex_green_vertex", "/shaders/outfit_tunnel_vortex_green_fragment")
g_shaders.createOutfitShader("tunnel_vortex_purple", "/shaders/outfit_tunnel_vortex_purple_vertex", "/shaders/outfit_tunnel_vortex_purple_fragment")
g_shaders.createOutfitShader("tunnel_vortex_gold", "/shaders/outfit_tunnel_vortex_gold_vertex", "/shaders/outfit_tunnel_vortex_gold_fragment")

-- New advanced shader effects
g_shaders.createOutfitShader("fractal_flame", "/shaders/outfit_fractal_flame_vertex", "/shaders/outfit_fractal_flame_fragment")
g_shaders.createOutfitShader("lightning_storm", "/shaders/outfit_lightning_storm_vertex", "/shaders/outfit_lightning_storm_fragment")
g_shaders.createOutfitShader("hologram_glitch", "/shaders/outfit_hologram_glitch_vertex", "/shaders/outfit_hologram_glitch_fragment")
g_shaders.createOutfitShader("cyber_matrix", "/shaders/outfit_cyber_matrix_vertex", "/shaders/outfit_cyber_matrix_fragment")

-- Monster Rarity Holy shader with bottom-up pulsing rings
g_shaders.createOutfitShader("monsterrarity_holy", "/shaders/outfit_monsterrarity_holy_vertex", "/shaders/outfit_monsterrarity_holy_fragment")
g_shaders.addTexture("monsterrarity_holy", "/images/shaders/idler_holy.png")

g_shaders.createOutfitShader("monsterrarity_fire", "/shaders/outfit_monsterrarity_fire_vertex", "/shaders/outfit_monsterrarity_fire_fragment")
g_shaders.addTexture("monsterrarity_fire", "/images/shaders/idler_fire.png")
-- Monster Rarity Ice shader
g_shaders.createOutfitShader("monsterrarity_ice", "/shaders/outfit_monsterrarity_ice_vertex", "/shaders/outfit_monsterrarity_ice_fragment")
g_shaders.addTexture("monsterrarity_ice", "/images/shaders/idler_ice.png")

-- Monster Rarity Earth shader
g_shaders.createOutfitShader("monsterrarity_earth", "/shaders/outfit_monsterrarity_earth_vertex", "/shaders/outfit_monsterrarity_earth_fragment")
g_shaders.addTexture("monsterrarity_earth", "/images/shaders/idler_earth.png")

-- Monster Rarity Death shader
g_shaders.createOutfitShader("monsterrarity_death", "/shaders/outfit_monsterrarity_death_vertex", "/shaders/outfit_monsterrarity_death_fragment")
g_shaders.addTexture("monsterrarity_death", "/images/shaders/idler_death.png")

-- Monster Rarity Energy shader
g_shaders.createOutfitShader("monsterrarity_energy", "/shaders/outfit_monsterrarity_energy_vertex", "/shaders/outfit_monsterrarity_energy_fragment")
g_shaders.addTexture("monsterrarity_energy", "/images/shaders/idler_energy.png")

-- Monster Rarity Cosmos shader (bonus effect)
g_shaders.createOutfitShader("monsterrarity_cosmos", "/shaders/outfit_monsterrarity_cosmos_vertex", "/shaders/outfit_monsterrarity_cosmos_fragment")
g_shaders.addTexture("monsterrarity_cosmos", "/images/shaders/idler_cosmos.png")


end


function terminate()
end