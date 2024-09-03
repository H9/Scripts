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

### How to Collaborate

All PRs are welcome. Fork this repo, and write command scripts in your repo and test it, and then submit your PR.

### Need to know

Each command needs two files with the same name.
- Script file: such as `foo.sh`, write the scripts in your way, bash, applescript and swift for now.
- Meta file: such as `foo.meta`, its format
  ```
  name: 
  description: 
  author: 
  website: 
  type: bash/applescript/swift
  command: 
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

  ### License

  [MIT](LICENSE)
  
  Copyright (C) 2018-present, Bin Hua
