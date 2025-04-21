other.hp = 0;

// Play the enemy hit sound effect
audio_play_sound(snd_enemy_hit, 0, 0);
		
// Destroy the fireball
instance_destroy();