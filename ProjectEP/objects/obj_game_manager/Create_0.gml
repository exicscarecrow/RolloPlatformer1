
// This creates the HUD sequence, which shows all HUD elements (such as coins and hearts). It lasts throughout the level.
layer_sequence_create("Instances", 0, 0, seq_game_hud);

// paused: This will be true when the game is paused, and false when it's not
paused = false;
mapopen= false;
abilities_buttons = false;
abilities_menu = false;
in_cave = false;
// pause_sequence: The ID of the Sequence element created for the pause menu, used to close it
// when the player hits Escape to resume
pause_sequence = -1;
map_sequence = -1;
abilities_menu_buttons = -1;
abilities_menu_sequence = -1;

// If the game is running on a browser, it creates the touch controls sequence
if (os_browser != browser_not_a_browser)
{
	layer_sequence_create("TouchControlsLayer", 0, 0, seq_touch_controls);
}
// If the game is running on Opera GX, Android, or iOS, it creates the touch controls sequence
else if (os_type == os_operagx || os_type == os_android || os_type == os_ios)
{
	layer_sequence_create("TouchControlsLayer", 0, 0, seq_touch_controls);
}

// If the "EffectLeaf" layer exists,
if (layer_exists("EffectLeaf"))
{
	// Get the leaf effect FX struct
	effect_leaf = layer_get_fx("EffectLeaf");

	// Get the number of leaves
	leaf_count = fx_get_parameter(effect_leaf, "param_num_particles");
}