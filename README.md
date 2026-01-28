# Prisma Web

## Quick Start

```bash
# Build images
./build-images.sh

# Run containers
podman run -d --name license-server -p 3000:3000 --env-file render/license-server/.env prisma-web/license-server:latest
podman run -d --name discord-bot -p 3001:3001 --env-file routewalker-discord-bot/.env prisma-web/discord-bot:latest
```

## Commands

```bash
# Restart
podman restart license-server discord-bot

# Stop
podman stop license-server discord-bot

# Logs
podman logs license-server
podman logs discord-bot

# Rebuild after code changes
podman rm -f license-server discord-bot
./build-images.sh
```

## Ports

- `3000` - License server
- `3001` - Discord bot API
