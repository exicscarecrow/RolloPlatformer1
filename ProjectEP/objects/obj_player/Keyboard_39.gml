// This checks if the player is currently in knockback, after being hit by an enemy.
if (in_knockback)
{
	// In that case we exit/stop the event here, so the player can't move.
	exit;
}

// Set the X velocity to move_speed.
// This makes the character move right.
vel_x = move_speed;

// This checks if the current sprite is the fall sprite, meaning the player hasn't landed yet.
if (sprite_index == spr_player_fall)
{
	// In that case we exit/stop the event here, so the sprite doesn't change.
	exit;
}

// This checks if the player is on the ground, before changing the sprite to the walking sprite. This is
// done to ensure that the walking sprite does not active while the player is in mid-air.
if (grounded && !pickingHat && !throwingHat)
{
	// Change the instance's sprite to the walking player sprite.
	if (canHat)
	{
	// This changes the player's sprite to the jump sprite, and resets the frame to 0.
	sprite_index = spr_player_walk;
	//image_index = 0;
	}
	else{
		// This changes the player's sprite to the jump sprite, and resets the frame to 0.
	sprite_index = spr_player_nohatwalk;
	//image_index = 0;
	}

	
}
	