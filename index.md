---
layout: home
title: "Home"
---

<div class="youtube-player">
    <iframe width='1400' height='824' onload="iframe_loaded(this)" src="https://www.youtube.com/embed/ZsT8oq5qN2M?&theme=dark&color=white&autohide=2&modestbranding=1&showinfo=0&rel=0" frameborder="0" allowtransparency="true"  allow="autoplay"></iframe>
</div>

<div class="blurb">
    <p class="blurb-title">easy to host</p>
    <p class="blurb-text">no prior experience in hosting needed</p>
    <p class="blurb-title">easy to customise</p>
    <p class="blurb-text">pick whichever modules you want, or write your own</p>
    <p class="blurb-title">easy to understand</p>
    <p class="blurb-text">modules are just like standalone discord bots, but in a much more streamlined format</p>
</div>

<iframe class="widget-discord" onload="iframe_loaded(this)" src="https://discordapp.com/widget?id=379959693306494979&theme=dark" width="350" height="500" allowtransparency="true" frameborder="0"></iframe>

## Getting started

Most Discord bots are hosted for you, and you add the bot to your server by simply clicking a link. However, anyone with access to the bot's authentication token is able to access all data that the bot can, including text and voice channels.

Of course, most bot developers will never abuse this, but for those who would like some peace of mind or are using Discord for sensitive data, the only solution is to go through a few more steps and host a bot yourself, so that only you have the bot's token. Modis is designed to be easily hosted by anyone willing to spare ten minutes or so, with no prior experience needed.

**To get started hosting your own version of Modis, check out the [setup](./doc/guides/setup.md) guide.** If you run into any problems, don't hesitate to join our Discord server and ask!

## Premade modules

There are 4 standard modules that come with the default Modis installation:

- `!core` - The module that runs Modis' internal commands API and handles database management. Other modules may not function properly without this module.
- `music` - Modis' flagship module, a music player with a fully-featured graphical interface that displays inside Discord.
- `manager` - A moderation module designed for larger servers with features such as automatic mutes and bans.
- `help` - Allows users to read the commands listing for each module inside Discord.

ModisWorks also develops 7 additional modules for you to have fun with:

- `bethebot` - Adds an interface to the Modis host console that lets the hoster send messages as the bot.
- `reddit` (previously `gamedeals`) - Integrates Reddit and Discord, view hot posts directly in your text channel.
- `hex` - Useful tool for web developers and artists, visualises hex colour values for you when you send one in text chat.
- `replies` - Set text replies for specific phrases.
- `rocketleague` - Get your Rocket League rank and statistics in Discord.
- `tableflip` - Anger management tool.

More detailed information about each module can be found in the [Documentation](https://infraxion.github.io/modis/documentation/#modules).

## Custom modules

One of Modis' core features is an internal "API" so to speak that makes writing custom modules very easy. If you have no prior experience with programming, don't worry - you can start learning right now and have a working module within 10 minutes! We've written a guide to get you started with a simple [Ping Pong Module](./doc/guides/ping-pong.md).

If you do have experience with discord.py, writing a module for Modis is exactly the same as writing a standalone Discord bot, but with all the event listeners neatly organised into seperate files. Writing Discord bots using the Modis platform streamlines the process and makes your code much more readable. The Modis internal API supports every event listener under the discord.py API, and you have full access to the `client` object to send messages or play audio. Style guides and code standards for Modis modules are coming soon.
