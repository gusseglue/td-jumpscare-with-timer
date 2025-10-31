# QBCore Jumpscare Script (God Commands)

## Created from `qb-poop` by Evil

GitHub repository: https://github.com/MrEvilGamer/qb-poop

## QBCore DC Community

Join the Discord community: https://discord.gg/qbcore

## Requirements

- `interact-sound`
- A QBCore server

## Instructions

1. Place `.ogg` files into `(interact-sound/client/html/sounds)`
2. Rename `td-jumpscare-main` to `td-jumpscare`
3. Place `td-jumpscare` into the `[standalone]` folder and start the server, or place it into `resources` and ensure `td-jumpscare` is running

## Features

- **Event Queue System**: All jumpscares and sounds are queued and triggered sequentially with random delays between each event. This prevents overlapping effects and ensures each scare/sound plays completely before the next one starts.
- **Random Timing**: Each queued event waits for a random delay before triggering, making the timing unpredictable and more suspenseful!

## Available Commands

Command | Description | Example
--- | --- | ---
`/hello` | Queue "hello" sound to play after random delay | `/hello` or `/hello 1` (to send to ID 1)
`/hellonear` | Queue "hello" sound for nearby players | `/hellonear` or `/hellonear 1` (to send to ID 1 and nearby players)
`/findme` | Queue "can you find me" sound to play after random delay | `/findme` or `/findme 1` (to send to ID 1)
`/findmenear` | Queue "can you find me" sound for nearby players | `/findmenear` or `/findmenear 1` (to send to ID 1 and nearby players)
`/scare` | Queue a jumpscare to trigger after random delay | `/scare` or `/scare 1` (to send to ID 1)
