# The Internal Commands API

## Overview

Modis' internal commands API is designed to streamline the module code by collating the handling of bot commands into one central module (`!core`), which then distributes the commands to their respective modules.

With the internal commands API, you don't need to worry about implementing parsing, permissions, or auxiliary arguments into your code. You only need to define what commands and arguments your module can receive (and their default permission levels if you want) in the `__info.py` file, which acts like a header file of sorts for your module. Then, you can use an `on_command.py` event handler the same way you would use any of the discord.py event handlers.

## Commands

Just like a header file, `__info.py` defines what methods your module is able to execute (commands), what variables it can take (auxiliary arguments), and what variables and constants it stores (database structure).

The internal commands API uses the `__info.py` file to add your module's commands to the list against which it will check each message received from Discord.

[text here]

## Auxiliary arguments

[text here]

## Permissions

[text here]

Below is a table of a command's permission integer vs who is allowed to access that command:

Integer | Accessible by
---: | :---
`-1` |  @everyone
`0` | Server owner only
`1` | Server owner + highest role
`2` | Server owner + 2nd hightest role and above
`3` | Server owner + 3rd highest role and above

and so on.

[text here]