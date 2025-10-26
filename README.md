# PvZ Replanted AHK Script

An AutoHotkey (v2) script for Plants vs. Zombies: Replanted. It provides keyboard hotkeys for selecting seed packets and pressing the speed-up button.

## Features

* **Seed Packets:** Press `1`, `2`, `3`, `4`, `Q`, `W`, `E`, `R`, `A`, `S` to select the corresponding seed packet.
* **Speed Up:** Press `Z` to press the in-game speed-up button.
* **Mouse Return:** The script clicks the UI element and instantly returns your mouse to its original position.
* **Resolution Scaling:** Automatically calculates click positions, allowing the script to work even if the game window is resized or running at a different resolution than its native one.

## Requirements

* [AutoHotkey v2](https://www.autohotkey.com)

## Configuration

Before running the script, you must configure the coordinates to match your game's resolution and layout.

1.  **Set The Correct Resolution:** Set the resolution value as the same resolution the game is running.

2.  **Find Coordinates:** Open the game and enter any level you want.
    * Use the AutoHotkey "Window Spy" tool to find the `Window` (not Screen) coordinates for the following items.
    * Update these variables in the script:
        * `speedUpX`, `speedUpY`: The center of the speed-up button.
        * `card1_X`, `card_Y`: The center of the *first* seed packet slot.
        * `card_Step`: The horizontal pixel distance between the center of the first seed packet and the center of the second seed packet.

3.  **Run:** Once configured, simply run the script. The hotkeys will only be active when the `Replanted.exe` window is active.
