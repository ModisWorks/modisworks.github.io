---
title: Setup
permalink: /guides/setup/
---
# Installing Modis

## Prerequisites

If you want to run Modis for yourself you'll need:

- Python 3.7.4
- FFmpeg (If you want voice functionality eg. music player)
- A Discord bot account token
- The following Python packages:
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

If you're not sure how to get these, we've got a quick guide for each of them below:

### Python 3.7.4

Modis is currently running on Python 3.7.4. If you don't have this version of Python installed, check the guide for your OS below:

<details>
    <summary>Python installation - Windows</summary>

1. Go to the [Python downloads page for Python 3.7.4](https://www.python.org/downloads/release/python-374/).
2. Scroll down a bit, and download the [Windows x86-64 executable installer](https://www.python.org/ftp/python/3.7.4/python-3.7.4-amd64.exe) if you're on 64-bit, or the [Windows x86 executable installer](https://www.python.org/ftp/python/3.7.4/python-3.7.4.exe) if you're on 32-bit. (You can also click those links to download them without going to the website)
3. Run the installer. **Check the box for `Add Python 3.7 to PATH`**.
    > If you picked `Customize installation`, **check `Add Python to environment variables`** on the second options page.
</details>

<details>
    <summary>Python installation - OS X</summary>

1. Open Terminal, paste the command `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` and press Enter to download [Homebrew](https://brew.sh/).
    >Homebrew is a package manager for OS X. You don't have to use it, but it will make setting up Modis easier and we recommend getting it.
2. After Homebrew is installed, run `brew install python` in Terminal to install the latest version of Python.
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
2. Restart your computer.
</details>

<details>
    <summary>FFmpeg installation - Linux</summary>

You know how.
</details>

# Installing Modis

Now that you have the basics done, you want to install Modis. First, you'll want to use pip to install Modis to install all the packages and requirements that Modis needs. In a command window, run `pip3 install modis --upgrade` to install the latest version of Modis. If everything goes well and there are no errors, then you can start making a file to launch Modis from.

# Using Modis

Modis is now fully installed, but you still need to make a way to run it. You'll need to make a Python file to run it. First: import the `modis` packages, then call `modis.gui` with your Discord Bot Token and Discord Bot Client ID.

> If you don't know how to make your own Discord Bot, have a look at the [Making a Discord Bot](./api-keys.md#making-a-discord-bot) section for step-by-step instructions on getting the Discord token and client id.

The `launcher.py` file should look like this:

```python
import modis

modis.gui()
```

To run Modis now, just run `python launcher.py` from the directory that `launcher.py` is in.

> If you are running Modis on a system without `tkinter` installed, or just prefer not to use the GUI, you can change `modis.gui()` to `modis.console()` to start Modis without the GUI.

# Troubleshooting

If you still have problems, see the [Troubleshooting](../documentation/troubleshooting.md) section for solutions to some common problems. If you don't find a solution there, then feel free to join our Discord Server to ask your questions.

*Guides for getting tokens for Discord bots, Reddit, and Google are coming soon.*
