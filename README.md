

Howlin Dotfiles
===============

These dotfiles specify the Howlin Fleet. They are installed on each vessel via
[Howlos](https://github.com/howlos) and are managed by
[Fang](https://github.com/fang), the trusty commodore of the Howlin Fleet.


## Structure

Each vessel in the fleet is specified in their relative leaf branch and that
includes the specifications of its dependency branches be they main, server of
worker. The tree is maintained with the gitflow pattern.
```md
- main
  - server
    - host leaves
  - worker
    - host leaves
```

## Diffs

Here's a brief picture of the tree. This may not be up to date.

```bash
## server

## the
.local/bin/.gitignore
.local/share/ranger/bookmarks

## worker
.bash_aliases
.local/bin/.gitignore
.local/config/gtk-3.0/bookmarks
.local/share/ranger/bookmarks

## howlin
.config/terminator/config
.local/bin/.gitignore
.local/config/gtk-3.0/bookmarks
.local/share/ranger/bookmarks

## bass
.local/bin/.gitignore
.local/config/gtk-3.0/bookmarks
.local/share/ranger/bookmarks
```

## RoadMap

- Track firefox bookmarks
