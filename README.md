# fucking-zsh
ZSH configurations on Mac

Usage:

- Clone the repository into a reasonable location (e.g. $HOME/Development/org.nerdsofprey/fucking-zsh)
- Remove (or merge) your current .zshrc, replacing it with the line ```source $HOME/Development/org.nerdsofprey/fucking-zsh/.zshrc```
- now it's the same everywhere, great job

<3

Troubleshootin's

- If you get the compinit insecure directories warning, use `compaudit` to
find the list of troublesome directories, then change permissions on 'em
to 0755. cf.:

```
sudo chmod -R 755 /usr/local/share/zsh
```

