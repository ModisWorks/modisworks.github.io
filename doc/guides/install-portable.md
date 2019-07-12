---
title: Setup
permalink: /guides/setup/
---
# Installing Modis

## Prerequisites

If you want to run Modis for yourself you'll need:

- Python 3.7.4, plus the following Python packages:
    - `discord.py`
    - `tkinter` - For the bot GUI
    - `PyGithub` - For the built-in module downloader
    - `pynacl` - For voice functionality
    - `youtube-dl` - For the music module
    - `google-api-python-client` - For YouTube support in the music module
    - `spotipy` - For Spotify support in the music module
    - `soundcloud` - For SoundCloud support in the music module
    - `requests` - For modules that use HTTP API calls
    - `lxml` - For modules that use HTTP API calls
    - `praw` - For the Reddit module
- FFmpeg (If you want voice functionality eg. music player)
- A Discord bot account token

If you're not sure how to get these, we've got a quick guide for each of them below:

### Python 3.7.4

Modis is currently running on Python 3.7.4. If you don't have this version of Python installed, check the guide for your OS below:

<details>
    <summary>Python installation - Windows</summary>

1. Go to the [Python downloads page for Python 3.7.4](https://www.python.org/downloads/release/python-374/).
1. Scroll down a bit, and download the [Windows x86-64 executable installer](https://www.python.org/ftp/python/3.7.4/python-3.7.4-amd64.exe) if you're on 64-bit, or the [Windows x86 executable installer](https://www.python.org/ftp/python/3.7.4/python-3.7.4.exe) if you're on 32-bit. (You can also click those links to download them without going to the website)
1. Run the installer. **Check the box for `Add Python 3.7 to PATH`**.
    > If you picked `Customize installation`, **check `Add Python to environment variables`** on the second options page.

That's it! We don't need to install all the Python packages manually as they are included with the Modis for Windows download.
> If you're not using the provided Python venv, just install all the requirements with pip like usual.
</details>

<details>
    <summary>Python installation - OS X</summary>

1. Open Terminal, paste the command `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` and press Enter to download [Homebrew](https://brew.sh/).
    >Homebrew is a package manager for OS X. You don't have to use it, but it will make setting up Modis easier and we recommend getting it.
1. After Homebrew is installed, run `brew install python` in Terminal to install the latest version of Python.
1. Python packages WIP
</details>

<details>
    <summary>Python installation - Linux/Raspi</summary>

- If you use Linux you don't need our help installing Python.
- If you're installing Modis onto a Raspberry Pi (Raspbian), the process is a lot more involved and you will need to compile Python 3.7.4 yourself. We have a separate guide for [installing Modis on Raspbian](./install-raspi.md) that you should use instead of this one.
</details>

### FFmpeg

FFmpeg is required for Modis to use voice features of Discord (such as playing music with the `music` module). If you don't intend to use any modules that use voice functionality then you can skip this step.

<details>
    <summary>FFmpeg installation - Windows</summary>
    
- FFmpeg is provided with Modis for Windows. No installation needed.
    > If you're not using the provided Python venv, just get a build from [here](https://ffmpeg.zeranoe.com/builds/) and make sure that the folder containing ffmpeg.exe can be found in PATH.
</details>

<details>
    <summary>FFmpeg installation - OS X</summary>

1. Run `brew install ffmpeg --with-opus` in Terminal.
1. Restart your computer.
</details>

<details>
    <summary>FFmpeg installation - Linux</summary>

You know how.
</details>

### Discord bot account

We need to create a bot account through which Modis which interact with your server. You've probably seen these before for other bots; they look just like normal accounts but with a blue `BOT` tag next to their username. If you don't know how to make a Discord bot account, follow these steps:

1. Log in to Discord in your browser
1. Go to the [My Apps](https://discordapp.com/developers/applications/me) section of the Discord developer's page (if you aren't logged in to Discord you'll need to do that as well).
1. Click the blue `New Application` button on the top right.
1. Give your bot a name (you can change it at any time) and click `Create`.
1. Take note of the `CLIENT ID`; this is needed to create the invite link to invite your bot to servers. If you'd like to add a profile picture and description to your bot, you can do so now.
1. On the left menu, go to the `Bot` tab.
1. Click `Add Bot`, then `Yes, do it!`
1. We suggest turning off `PUBLIC BOT` as it allows anyone with your bot's client ID to add your bot to their server without you knowing.
1. Click `Click to Reveal Token` and take note of the token. **KEEP THIS TOKEN SECRET; it is equivalent to a PASSWORD. Always make sure your bot token is not visible when posting screenshots for help in the Modis Discord server**. Anyone with your bot token can do anything your bot has permission to do. For example, if the bot has admin permissions, they could **wipe your Discord server**.

You should now have a `CLIENT ID` (username) and a `TOKEN` (password). We'll use these later, so keep them safe somewhere. If you'd like to add a profile picture and description to your bot, you can do so on the `General Information` tab.

## Installing Modis

Once you've got all the prerequisites sorted, follow the instructions for your OS below to download and install Modis:

<details>
    <summary>Modis installation - Windows</summary>
    
1. Go to the [Modis Releases page](https://github.com/ModisWorks/modis/releases) and pick the flavour of Modis for Windows that you want.
1. Unzip and chuck the contents in a folder somewhere.

That's it! Run `#START MODIS.bat` to start Modis.
>Modis for Windows is *almost* completely portable; it'll work with full functionality on any Windows computer with Python 3.7.4 installed. You can move the folder wherever you like, whenever you like.
</details>

<details>
    <summary>Modis installation - OS X</summary>

WIP
</details>

<details>
    <summary>FFmpeg installation - Linux</summary>

WIP
</details>

## Using Modis

Once you've got Modis installed, here's a few things to take note of to get started with hosting your bot:

- To log your bot in, paste the bot `TOKEN` you got from earlier into the `Discord bot token` field, and click `Start Modis`.
- To invite your bot to servers, paste the bot `CLIENT ID` you got from earlier into the field that says `Paste Client ID here for invite link`, then click `Invite bot to server`.
- WIP

## Troubleshooting

If have problems with getting Modis running, try the [Troubleshooting](./troubleshooting.md) section for FAQs. If you don't find a solution there, then feel free to join our Discord Server to ask your questions.