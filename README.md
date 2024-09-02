# H9 Launcher CommandScripts
An easy-to-use script launcher

### How to use

It's simple to use H9 Launcher.

- Clone this repo to your Mac
- Download H9 Launcher from [Here](https://res.binhua.org/dl/H9.dmg).
- Set the `path` in H9 Launcher app
  ![settings-path](https://github.com/user-attachments/assets/0a5db9db-c3a2-4e39-8df6-2714c2f99b24)
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
