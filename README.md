# H9 Launcher CommandScripts
A lightweight script launcher

This repository is to inform everyone that the scripts running in H9 Launcher can be custom-made in addition to being downloaded directly within the H9 Launcher. Just follow the template rules provided below.

### How to use H9 Launcher

It's simple to use H9 Launcher.

- Download H9 Launcher from [Here](https://binhua.org/h9).
- Download all scripts via `H9 app -> Settings` or download all scripts in this repo and put them in `~/.h9launcher/commandscripts`
- Set `Hotkey` to call the launcher
- That's all

**Please note: only Bash, AppleScript, Swift for now.**

### Need to know

**Predefined Commands**

I'm just providing some simple preset commands, and I encourage everyone to create their own powerful scripts. Don't forget to share them!

- `help`: Redirect to H9 helping website
- `app refreshindex`: Create an index of all apps installed on macOS, it's important.
- `app appname`: Open an app
- `emptytrash`: Empty trash
- `finder`: Open a Finder
- `goto path/folder/url`: Go to `folder` or open a website in default browser.
- `helloworld`: Hello World
- `lockscreen`: Lock the Mac screen
- `openfolder path/folder`: Open a folder
- `restart`: Restart the Mac
- `settings`: Open Settings
- `shutdown`: Shut the Mac down

You can also refer to [here](http://h9.hua.info/scripts/commandscripts.json). 

**Create your own commands**

Each command needs two files with the same name.

- Script file: such as `foo.sh`, write the scripts in your way, bash, applescript and swift for now.
- Meta file: such as `foo.meta`, its format
- Notice: command should be the same name
  ```
  name: 
  description: 
  author: 
  website: 
  type: bash/applescript/swift
  command: foo
  arguments:
    - name: 
      type: 
      placeholder: 
      optional: 
      description: 
  environments:
    - macos
  tags:
    - System
    - Productivity
  ```

  name, description, author, type, command, environments and tags are required.

  More, please check the `templates` folder in this repo.

### How to Collaborate

Share your powerful commands! All PRs are welcome. 

Fork this repo, upload your tested command scripts, and then submit a PR.

### License

[MIT](LICENSE)

Copyright (C) 2018-present, Bin Hua
