---
title: Guides
permalink: /guides/
---
# Guides

## Installing Modis

Get Modis running on your own machine.

- [**Modis Quickstart**](./guides/install-portable.md) - Portable version of Modis, currently **Windows only**
- [Modis Manual Installation](./guides/install-manual.md) - Works on any OS, recommended if you are planning on writing your own modules
- [Getting API Keys](./guides/api-keys.md)
  - [Discord](./guides/api-keys/discord.md) - Create a bot account for Modis to run on
  - [Google](./guides/api-keys/google.md) - Required for `music` module search and YouTube playback
  - [Reddit](./guides/api-keys/reddit.md) - Required for `reddit` module
  - ~~SoundCloud~~ SoundCloud is currently not giving out any more API keys. We'll update this section when they become available again.
- [**Troubleshooting**](./guides/troubleshooting.md) - Solve common problems with installing and running Modis
- [Raspberry Pi Installation (unfinished guide)](./guides/install-raspi.md) - Installing Modis on a Raspberry Pi for 24/7 operation

## Developing for Modis

Learn how to make your own module for Modis.

- [Ping Pong Module](./guides/dev/pingpong.md) - Simple enough for anyone to get started with, no experience required
- [The Internal Commands API](./guides/dev/api-commands.md) - Learn about Modis' internal API that greatly streamlines the way your module handles commands.
- [Introduction to embed interfaces](./guides/dev/ui-embed.md) - Get nice-looking interfaces to display information in Discord text channels
- [Introduction to console interfaces](./guides/dev/ui-console.md) - Learn how to create a bot console interface for your module
