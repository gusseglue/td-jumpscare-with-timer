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

- **Automatic Random Scares**: The system automatically triggers random jumpscares and sounds at random intervals between 10 seconds and 10 minutes. No manual commands needed - the scares happen automatically!
- **Random Selection**: Each automatic trigger randomly selects from different scare types (jumpscare, hello sound, or findme sound)
- **Manual Override**: Commands still work for manually triggering specific scares when needed

## Available Commands

Command | Description | Example
--- | --- | ---
`/hello` | Manually trigger "hello" sound | `/hello` or `/hello 1` (to send to ID 1)
`/hellonear` | Play "hello" sound to nearby players | `/hellonear` or `/hellonear 1` (to send to ID 1 and nearby players)
`/findme` | Manually trigger "can you find me" sound | `/findme` or `/findme 1` (to send to ID 1)
`/findmenear` | Play "can you find me" sound to nearby players | `/findmenear` or `/findmenear 1` (to send to ID 1 and nearby players)
`/scare` | Manually trigger a jumpscare | `/scare` or `/scare 1` (to send to ID 1)

**Note**: The automatic random scare system runs continuously in the background for all players. Commands are only needed for manual/forced triggers.
