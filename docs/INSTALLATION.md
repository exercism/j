Refer to [System/Installation](https://code.jsoftware.com/wiki/System/Installation) for instructions on how to get things set up on your system.

After installing, I'd suggest using the package manager (called `pacman`) to grab available addons. To do this, start a `J` console session by typing `jconsole`. Then enter:

```j
load 'pacman'
'update'jpkg''
'install' jpkg '*'
```

To run the tests you'll need to run `'install'jpkg'general/unittest'` at a minimum. The rest of the addons are highly useful and include frameworks for working with graphics, websockets, and much else and don't take up much space (should be around 40Mb).