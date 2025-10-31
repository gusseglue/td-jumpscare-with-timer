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

- **Random Delay**: All jumpscares and sounds are triggered with a random delay between 1 and 10 seconds for each player, making them more unpredictable and fun!

## Available Commands

Command | Description | Example
--- | --- | ---
`/hello` | Play "hello" in your own ears (with random delay) | `/hello` or `/hello 1` (to send to ID 1)
`/hellonear` | Play "hello" in your own ears and nearby players (with random delay) | `/hellonear` or `/hellonear 1` (to send to ID 1 and nearby players)
`/findme` | Play "can you find me" in your own ears (with random delay) | `/findme` or `/findme 1` (to send to ID 1)
`/findmenear` | Play "can you find me" in your own ears and nearby players (with random delay) | `/findmenear` or `/findmenear 1` (to send to ID 1 and nearby players)
`/scare` | Send yourself a jumpscare (with random delay) | `/scare` or `/scare 1` (to send to ID 1)
