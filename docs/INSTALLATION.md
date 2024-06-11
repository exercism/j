# Installation

Refer to [System/Installation](https://code.jsoftware.com/wiki/System/Installation) for instructions on how to get things set up on your system.

~~~exercism/caution
If you have the Java Development Kit (JDK) installed, the `jconsole` executable could potentially conflict with the Java Console, which uses the same name.

Potential solutions include:

- Rename the J programming language's `jconsole` executable to something unique (e.g., `jconsole-jlang`).

- Adjust your system's environment variables or PATH to prioritize the J programming language's `jconsole`.

- **For Linux users**, there is a bash script located at `bin/install.sh` that will create a **symbolic link** called `ijconsole` in the `/usr/` directory. You can use this link by typing `ijconsole` at your terminal.
~~~

Once J has been installed, open a J console at your terminal and enter the following commands to install the unit test framework:

```j
  load 'pacman'
  'update' jpkg ''
  'install' jpkg 'general/unittest'
  exit 0
```
