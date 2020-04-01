Refer to [System/Installation](https://code.jsoftware.com/wiki/System/Installation) for instructions on how to get things set
up on your system.

After installing, I'd suggest using the package manager (called
`pacman`) to grab available addons. These include facilities for
testing, graphics, images, json, linear algebra, interfacing with
other languages including python, r, java, and much else. The whole of
it about 40Mb.

To do this, start a `J` console session by typing `jconsole`. Then
enter:

    load 'pacman'
    'install' jpkg '*'

