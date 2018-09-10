# The Database API

Modules often need to be able to save permanent data to a file to store for later access. The internal database API makes this easy by providing an intuitive and simple interface to a `.json` file that stores all the permanent data Modis needs.

## How the database is organised

Modis' database structure is composed of two (optionally three) elements:

* Local volatile data (optional)
* Global volatile data
* Global non-volatile data

### Local volatile data

This is an optional component of modules that stores constants and variables that are only used by your module. The standard we'd like developers to adhere to is to have a `_data.py` file in your module that contains module-specific global constants and a cache dictionary to store module-specific global variables.

Here is an example of a generic `_data.py`:

```
MODULECOLOUR = 0x282b30
MODULECOLOUR_INFO = 0xAAFF00
MODULECOLOUR_ERROR = 0xFF5555

cache = {}
```

For example, the music module uses the cache dictionary to store things like the audio streamer objects.

### Global volatile and non-volatile data

In Modis, the global volatile and non-volatile data are usually exact copies of each other. The global volatile data is just a cache of `data.json`, loaded into RAM. This means we don't need to poll the disk when we only need to read the database, unless we're expecting the database to have been edited externally (such as in notepad++ etc.), in which case you can ask for the cache to be updated from the disk manually.

When we want to make a change to the database, the volatile storage is first edited, and then the database API will automatically write to disk what is currently in the volatile cache.

Modis' global non-volatile data is stored on a `data.json` file, which should only be interacted with by the database API. You don't need to worry about the global non-volatile storage, as modules shouldn't need to access it directly.

## The database `dict` structure

TODO

## Interacting with the database API

Interacting with local data is just the same as how you would normally write multi-file Python code - just `from . import _data`. To use the cache, for example, you would then use `_data.cache[foo]`.

To interact with global data, you will first need to import the database API with `from modis.tools import data`. Below is a list of functions and variables in the API and their uses:

* `data.get(server, module_name, path)`
    * Under normal usage, **this and `data.write()` should be the only functions you need.**
    * Use this function to **retrieve an object from the database.**
    * `server` *(string of numbers ie. the server id)*: Select the server that you want to access the database for.
    * `module_name` *(string, name of your module)*: Select the module that you want to access the database for.
    * `path` *(list of strings)*: List of the dictionary keys that you want to traverse to arrive at the value you want to edit. If you choose a path that doesn't exist yet, the API will throw an exception.
    * Returns the item referred to by `path`.
* `data.edit(server, module_name, path, value)`
    * Under normal usage, **this and `data.get()` should be the only functions you need.**
    * Use this function to **store an object in the database.**
    * `server` *(string of numbers ie. the server id)*: Select the server that you want to access the database for.
    * `module_name` *(string, name of your module)*: Select the module that you want to access the database for.
    * `path` *(list of strings)*: List of the dictionary keys that you want to traverse to arrive at the value you want to edit. If you choose a path that doesn't exist yet, the API will throw an exception.
    * `value` *(any variable)*: Set the value for the item you selected with `path`. You can set the value to another dict to expand the database.
* `data.cache`
    * This variable caches `data.json` into RAM. You can use this variable to read and edit anything in the database, including API keys etc.
    * If you edit this, don't forget to call `data.write()` afterwards if you want it to be permanent.
* `data.pull()`
    * Use this function to **manually update `data.cache` from `data.json`.** Use this if you updated `data.json` manually (eg. with an external editor).
    * This function is called automatically on Modis startup, and should not need to be called again unless you edit `data.json` externally.
* `data.push(new_data=None)`
    * Use this function without any arguments to **manually update `data.json` from `data.cache`.** Use this if you updated `data.cache` manually (without using `data.edit()`).
    * This function is called automatically when you call `data.edit()`, and should not need to be called manually under normal circumstances.
    * If you provide `new_data`, this function will replace both the volatile and non-volatile database with the object you provided.
    * ***The `new_data` argument should not be used under normal circumstances. You could accidentally delete the whole database!*** Only use it if you know what you are doing and definitely need it.
