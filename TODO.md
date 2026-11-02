# Dodge the Creeps – Tutorial Checklist

Following the official Godot 4 tutorial: *Getting Started → Your first 2D game*.

## 1. Setting up the project
- [x] Install Godot 4 and add it to PATH
- [x] Create the project
- [x] Add `art/` and `fonts/` assets
- [x] Flatten folder structure (project at repo root)
- [x] Re-import project in Project Manager from new location
- [x] Set viewport to 480 × 720
- [x] Set stretch mode `canvas_items`, aspect `keep`
- [x] First commit

## 2. Creating the player scene
- [ ] Create `Area2D` root named `Player`, lock child selection
- [ ] Add `AnimatedSprite2D` with `walk` and `up` animations
- [ ] Scale sprite to (0.5, 0.5)
- [ ] Add `CollisionShape2D` with a `CapsuleShape2D`
- [ ] Save as `player.tscn`

## 3. Coding the player
- [ ] Attach `player.gd`; add `speed` export and `screen_size`
- [ ] Add input actions: `move_left`, `move_right`, `move_up`, `move_down`
- [ ] Implement movement in `_process()` with clamping to screen
- [ ] Play/stop and flip animations based on direction
- [ ] Add `hit` signal and `body_entered` handler
- [ ] Add `start(pos)` function; hide player on ready

## 4. Creating the enemy
- [ ] Create `RigidBody2D` root named `Mob`, gravity scale 0
- [ ] Uncheck collision mask layer 1
- [ ] Add `AnimatedSprite2D` with `fly`, `swim`, `walk` animations (scale 0.75)
- [ ] Add `CollisionShape2D` (capsule)
- [ ] Add `VisibleOnScreenNotifier2D`
- [ ] Attach `mob.gd`: random animation on ready, free when off-screen
- [ ] Save as `mob.tscn`

## 5. The main game scene
- [ ] Create `Node` root named `Main`; instance `Player`
- [ ] Add `MobTimer` (0.5s), `ScoreTimer` (1s), `StartTimer` (2s, one shot)
- [ ] Add `StartPosition` marker at (240, 450)
- [ ] Add `MobPath` (`Path2D`) around the screen edge + `MobSpawnLocation` (`PathFollow2D`)
- [ ] Attach `main.gd`: export `mob_scene`, `score` variable
- [ ] Implement `game_over()` and `new_game()`
- [ ] Connect timer signals; spawn mobs with random position, direction, velocity
- [ ] Set Main as the main scene and test

## 6. Heads up display
- [ ] Create `CanvasLayer` named `HUD`
- [ ] Add `ScoreLabel`, `Message` label, `StartButton`, `MessageTimer`
- [ ] Apply Xolonium font (size 64)
- [ ] Attach `hud.gd`: `start_game` signal, `show_message()`, `show_game_over()`, `update_score()`
- [ ] Instance HUD in Main and wire up signals
- [ ] Clear old mobs on new game (`mobs` group)

## 7. Finishing up
- [ ] Add `ColorRect` background
- [ ] Add `Music` and `DeathSound` `AudioStreamPlayer`s
- [ ] Add `start_game` keyboard shortcut (Enter) to the button
- [ ] Play through and commit the finished game
